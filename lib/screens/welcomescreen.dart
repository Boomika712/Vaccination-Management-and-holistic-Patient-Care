import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cards = [
    {
      'title': 'Explore Services',
      'subtitle': 'Discover services we offer for all age groups.',
      'image': 'assets/exploreservices.png',
      'navigateTo': '/exploreservices',
    },
    {
      'title': 'Vaccine Chart',
      'subtitle': 'View detailed vaccine schedules for children and adults.',
      'image': 'assets/vaccinechart.png',
      'navigateTo': '/vaccinechart',
    },
    {
      'title': 'Get Services',
      'subtitle': 'Book vaccination appointments and access your records.',
      'image': 'assets/getservice.png',
      'navigateTo': '/services',
    },
    {
      'title': 'Get Reminders',
      'subtitle': 'Receive timely reminders for upcoming vaccinations.',
      'image': 'assets/getreminders.png',
      'navigateTo': '/reminders',
    },
    {
      'title': 'Know Your Vaccine',
      'subtitle': 'Learn about various vaccines and their benefits.',
      'image': 'assets/knowvaccine.png',
      'navigateTo': '/vaccineinfo',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to VacMed'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: cards.length,
          itemBuilder: (context, index) {
            final card = cards[index];
            final isImageLeft = index % 2 == 0; // Alternate image position

            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, card['navigateTo']);
              },
              child: Card(
                margin: EdgeInsets.only(bottom: 30),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 140, // Adjusted height for better spacing
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: isImageLeft
                        ? [
                            // Image on the left
                            Image.asset(
                              card['image'],
                              width: 80,
                              height: 80,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: 20),
                            // Content on the right
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    card['title'],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF333333),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    card['subtitle'],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF666666),
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ]
                        : [
                            // Content on the left
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    card['title'],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF333333),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    card['subtitle'],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF666666),
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            // Image on the right
                            Image.asset(
                              card['image'],
                              width: 80,
                              height: 80,
                              fit: BoxFit.contain,
                            ),
                          ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
