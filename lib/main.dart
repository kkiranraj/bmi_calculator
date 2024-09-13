import 'package:flutter/material.dart';
import 'input_page.dart'; // Adjust import as per your project structure
import 'splash.dart'; // Import your splash screen widget
import 'package:rename/rename.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: Splash(), // Set SplashScreen as the initial route
      routes: {
        '/home': (context) => const InputPage(), // Define routes if needed
      },
    );
  }
}
