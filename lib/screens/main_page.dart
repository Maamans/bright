import 'package:bright/screens/oppor_funds.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            // Handle profile icon pressed
          },
        ),
        title: const Text(
          'Welcome Farmer Abu',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Handle menu icon pressed
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.green,
            height: 2.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCardContainer1(),
            _buildCardContainer2(),
            _buildCardContainer3(),
            _buildCardContainer4(),
            _buildCardContainer5(),
            _buildCardContainer6(),
            _buildRowWithActionButton(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          // Check if the last item is selected
          if (index == 2) {
            // Navigate to SignUp screen
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const OpportunitiesFunds()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Best Price',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Close Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Opportunities/Funds',
          ),
        ],
      ),
    );
  }
}

Widget _buildRowWithActionButton() {
  return Padding(
    padding: const EdgeInsets.all(14.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Icon(Icons.data_usage, color: Colors.green), // Icon for data flow
            const SizedBox(width: 8.0),
            Text(
              'View all Products Health',
              style: TextStyle(color: Colors.black),
            ), // Text for All products health
          ],
        ),
        Column(
          children: [
            const Text('Add Products'),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {
                // Handle floating action button tap
              },
              child: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildCardContainer1() {
  return Card(
    color: Colors.white.withOpacity(0.95),
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    child: IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'pepper',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 150, // Set the height for the image
            child: Image.asset(
              'images/pepper.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Divider(
            color: Colors.green,
            thickness: 2.0,
            height: 20, // Set the height for the divider
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // Handle button tap
                },
                child: const Text(
                  'View Products Health',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.linear_scale,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

// Repeat the _buildCardContainerX() methods for Card 2 to Card 6 with the same modification

Widget _buildCardContainer2() {
  return Card(
    color: Colors.white.withOpacity(0.95),
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    child: IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'GroundNuts',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 150, // Set the height for the image
            child: Image.asset(
              'images/groundnuts.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Divider(
            color: Colors.green,
            thickness: 2.0,
            height: 20, // Set the height for the divider
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // Handle button tap
                },
                child: const Text(
                  'View Products Health',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.linear_scale,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildCardContainer3() {
  return Card(
    color: Colors.white.withOpacity(0.95),
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    child: IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'life stock cows',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 150, // Set the height for the image
            child: Image.asset(
              'images/cows.png',
              fit: BoxFit.cover,
            ),
          ),
          const Divider(
            color: Colors.green,
            thickness: 2.0,
            height: 20, // Set the height for the divider
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // Handle button tap
                },
                child: const Text(
                  'View Products Health',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.linear_scale,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildCardContainer4() {
  return Card(
    color: Colors.white.withOpacity(0.95),
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    child: IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Onoins',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 150, // Set the height for the image
            child: Image.asset(
              'images/onions.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Divider(
            color: Colors.green,
            thickness: 2.0,
            height: 20, // Set the height for the divider
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // Handle button tap
                },
                child: const Text(
                  'View Products Health',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.linear_scale,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildCardContainer5() {
  return Card(
    color: Colors.white.withOpacity(0.95),
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    child: IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Rice',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 150, // Set the height for the image
            child: Image.asset(
              'images/rice.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Divider(
            color: Colors.green,
            thickness: 2.0,
            height: 20, // Set the height for the divider
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // Handle button tap
                },
                child: const Text(
                  'View Products Health',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.linear_scale,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildCardContainer6() {
  return Card(
    color: Colors.white.withOpacity(0.95),
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    child: IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Lettuce',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 150, // Set the height for the image
            child: Image.asset(
              'images/lettuce.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Divider(
            color: Colors.green,
            thickness: 2.0,
            height: 20, // Set the height for the divider
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // Handle button tap
                },
                child: const Text(
                  'View Products Health',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.linear_scale,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
// Repeat the _buildCardContainerX() methods for Card 3 to Card 6
