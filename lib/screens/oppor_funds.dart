import 'package:flutter/material.dart';

class OpportunitiesFunds extends StatefulWidget {
  const OpportunitiesFunds({Key? key}) : super(key: key);

  @override
  State<OpportunitiesFunds> createState() => _OpportunitiesFundsState();
}

class _OpportunitiesFundsState extends State<OpportunitiesFunds> {
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
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage('images/wfp-logo-emblem-blue.png'),
                  ),
                  const SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'World Food Programme',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '20m ago',
                        style: TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Emergency Seed Funds: WFP provides emergency seed funds to farmers in crisis-affected areas to quickly restore agricultural production and improve food security.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Handle share button pressed
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.share, color: Colors.green),
                              const SizedBox(width: 4.0),
                              Text(
                                'Share',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle apply button pressed
                          },
                          child: const Row(
                            children: [
                              Text(
                                'Click to apply',
                                style: TextStyle(color: Colors.green),
                              ),
                              const SizedBox(width: 4.0),
                              Icon(Icons.arrow_forward, color: Colors.green),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(color: Colors.black26),

              const Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/FAO_logo.svg.png'),
                  ),
                  const SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Food And Agriculture Organization',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        '40m ago',
                        style: TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Emergency Seed Funds: WFP provides emergency seed funds to farmers in crisis-affected areas to quickly restore agricultural production and improve food security.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(20.0), // Adjust the radius as needed
                child: SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Image.asset(
                    'images/seeds.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Handle share button pressed
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.share, color: Colors.green),
                              const SizedBox(width: 4.0),
                              Text(
                                'Share',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle apply button pressed
                          },
                          child: const Row(
                            children: [
                              Text(
                                'Click to apply',
                                style: TextStyle(color: Colors.green),
                              ),
                              const SizedBox(width: 4.0),
                              Icon(Icons.arrow_forward, color: Colors.green),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(color: Colors.black26),

              const Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'images/ministry-of-agriculture-forestry.jpg'),
                  ),
                  const SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MOA Forestry and Food Security SL',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        '55m ago',
                        style: TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              const Text(
                'The Ministry of Agriculture is pleased to announce the availability of quality seeds for distribution to rural farmers. These seeds are provided to support agricultural activities and enhance food security in rural communities.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(20.0), // Adjust the radius as needed
                child: SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Image.asset(
                    'images/seed.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Handle share button pressed
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.share, color: Colors.green),
                              const SizedBox(width: 4.0),
                              Text(
                                'Share',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle apply button pressed
                          },
                          child: const Row(
                            children: [
                              Text(
                                'Click to apply',
                                style: TextStyle(color: Colors.green),
                              ),
                              const SizedBox(width: 4.0),
                              Icon(Icons.arrow_forward, color: Colors.green),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const Divider(color: Colors.black26),
              const Row(
                mainAxisAlignment:
                    MainAxisAlignment.end, // Align items to the end
                children: [
                  Text(
                    'View more',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.green,
                  ),
                ],
              ),
              // Add a divider with light black color
            ],
          ),
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
