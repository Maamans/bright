import 'package:bright/screens/welcome_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String currentTime;

  @override
  void initState() {
    super.initState();
    currentTime = _getCurrentTime();

    _updateTime();
  }

  void _updateTime() {
    Future.delayed(Duration(minutes: 1), () {
      setState(() {
        currentTime = _getCurrentTime();
      });
      _updateTime();
    });
  }

  String _getCurrentTime() {
    final now = DateTime.now();
    String period = now.hour < 12 ? 'AM' : 'PM';
    int hour = now.hour > 12 ? now.hour - 12 : now.hour;
    return '$hour:${now.minute} $period';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            Text(
              currentTime,
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            const Icon(Icons.network_cell, color: Colors.white),
            const SizedBox(width: 8),
            const Icon(Icons.network_wifi, color: Colors.white),
          ],
        ),
      ),
      body: Container(
        color: Color.fromARGB(177, 13, 94, 11),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/image1.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 6),
              const Text(
                'Bright',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Cultivating Transparency, Harvesting Trust.',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 30),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              const SizedBox(
                height: 150,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomePage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('Next'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
