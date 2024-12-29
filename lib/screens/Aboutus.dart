import 'package:flutter/material.dart';
import 'Loginscreen.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Illustration
            Center(
  child: Image.asset(
    'assets/about.png', // Path to the image in the assets folder
    height: 200,
    width: 200,
    fit: BoxFit.contain, // Adjusts how the image fits within the box
  ),
),
            SizedBox(height: 20),
            // About Us Text
            Text(
              "Our comprehensive digital platform revolutionizes vaccination management and holistic patient care. We offer tailored services for children, adults, senior citizens, and physicians, ensuring that each user receives personalized support and expert guidance. From tracking immunizations to managing overall health, our app provides a seamless experience for every stage of life.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 20),
            // Navigate to Login/Register Button
            ElevatedButton(
  onPressed: () {
    // Navigate to Login/Register Screen
    Navigator.pushNamed(context, '/login');
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.teal, // Use 'backgroundColor' instead of 'primary'
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  child: Text(
    'Login/Register',
    style: TextStyle(color: Colors.white, fontSize: 16),
  ),
),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: "Reminder",
          ),
        ],
        onTap: (index) {
          // Handle navigation here
          if (index == 0) {
            Navigator.pushNamed(context, '/profile');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/reminder');
          }
        },
      ),
    );
  }
}
