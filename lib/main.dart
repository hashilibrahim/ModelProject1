import 'package:flutter/material.dart';
import 'package:project1/registrationmodule/splash/splash.dart';

void main() {
  runApp(const CustomB());
}

class CustomB extends StatelessWidget {
  const CustomB({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void onCustomButtonPressed() {
    print("Custom Button Pressed!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: onCustomButtonPressed,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: const Text(
              'Custom Button',
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 18, // Text size
                fontWeight: FontWeight.bold, // Text weight
              ),
            ),
          ),
        ),
      ),
    );
  }
}
