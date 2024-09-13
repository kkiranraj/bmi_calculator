import 'package:flutter/material.dart';
import 'dart:async'; // Import dart:async for Future and Timer

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Delay for 4 seconds before navigating to InputPage
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacementNamed(context, '/home'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'BMI Calculator',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Center align the text
            ),
            SizedBox(height: 10), // Adjust the height for spacing
            Image.asset(
              'images/ima.png', // Replace with your image path
              width: 300, // Adjust width as needed
              height: 300, // Adjust height as needed
            ),
          ],
        ),
      ),
    );
  }
}
