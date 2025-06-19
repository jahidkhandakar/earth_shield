import 'package:flutter/material.dart';
import '../../widgets/stat_card.dart';
import '../../widgets/action_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1E3A8A), // Deep blue
              Color.fromARGB(255, 5, 103, 43), // Dark blue
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header Section
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.eco,
                        color: Colors.green[300],
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'EarthShield',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Protecting our planet together',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),

              // * Stats Cards
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      //* Quick Stats Row
                      Row(
                        children: [
                          Expanded(
                            child: StatCard(
                              icon: Icons.forest,
                              title: 'Trees Planted',
                              value: '1,247',
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: StatCard(
                              icon: Icons.water_drop,
                              title: 'Water Saved',
                              value: '2.3L',
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),

                      //* Main Action Cards
                      ActionCard(
                        icon: Icons.map_outlined,
                        title: 'Environmental Map',
                        subtitle: 'View local environmental data',
                        color: Colors.orange,
                        onTap: () {
                          // Navigate to map
                        },
                      ),

                      SizedBox(height: 15),

                      ActionCard(
                        icon: Icons.cloud_outlined,
                        title: 'Weather Forecast',
                        subtitle: 'Check environmental conditions',
                        color: Colors.cyan,
                        onTap: () {
                          // Navigate to forecast
                        },
                      ),

                      SizedBox(height: 15),

                      ActionCard(
                        icon: Icons.volunteer_activism,
                        title: 'Take Action',
                        subtitle: 'Join environmental initiatives',
                        color: Colors.purple,
                        onTap: () {
                          // Navigate to action page
                        },
                      ),

                      SizedBox(height: 15),

                      ActionCard(
                        icon: Icons.book_outlined,
                        title: 'Environmental Stories',
                        subtitle: 'Learn about conservation efforts',
                        color: Colors.teal,
                        onTap: () {
                          // Navigate to stories
                        },
                      ),

                      SizedBox(height: 20),

                      // Daily Tip Card
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.2),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.lightbulb_outline,
                                  color: Colors.yellow[300],
                                  size: 24,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Daily Eco Tip',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Use a reusable water bottle instead of plastic bottles. You can save up to 156 plastic bottles per year!',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          border: Border(
            top: BorderSide(color: Colors.white.withOpacity(0.2), width: 1),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green[300],
          unselectedItemColor: Colors.white70,
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
            BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Forecast'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
