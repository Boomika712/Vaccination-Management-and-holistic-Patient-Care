import 'package:flutter/material.dart';
import 'package:vacmed/screens/welcomescreen.dart';
import 'screens/Aboutus.dart';
import 'screens/Loginscreen.dart'; // Import the LoginScreen
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'screens/welcomescreen.dart';
import 'screens/register.dart';
import 'screens/ExploreServicesScreen.dart';
import 'screens/AddChild.dart';
import 'screens/childprofile.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => SplashScreen(), // SplashScreen as the entry point
        '/about': (context) => AboutUsScreen(),
        '/login': (context) => LoginScreen(),
        '/welcomescreen': (context) => WelcomeScreen(), // Register the LoginScreen route
        '/register': (context) => RegisterScreen(),
         '/exploreservices': (context) =>  ExploreServicesScreen(),
         '/addchild': (context) => AddChildScreen(),
         'childProfile': (context) => Childprofile(),
      },
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AboutUsScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                // Image or illustration
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink[100],
                  ),
                  child: Icon(Icons.favorite, size: 80, color: Colors.pink),
                ),
                SizedBox(height: 20),
                // Progress bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.blue[100],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                  ),
                ),
                SizedBox(height: 20),
                // Tagline
                Text(
                  "Your health is our vibe.",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.pink,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}