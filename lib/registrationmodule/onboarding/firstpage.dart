import 'package:flutter/material.dart';
import 'package:project1/registrationmodule/onboarding/3rdpg.dart';

void main() {
  runApp(MaterialApp(
    home: HOME(),
    debugShowCheckedModeBanner: false,
  ));
}

class HOME extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .70,
            width: double.infinity, // Full screen width
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/firstpagebg.png',
                    ),
                    fit: BoxFit.fill)
                // color: Color(0xFFFFDF9F),
                // borderRadius: BorderRadius.only(
                //   bottomRight: Radius.circular(100),
                // ),
                ),
            child: Image.asset('assets/images/firstpage001.png',
                fit: BoxFit.cover),
          ),
          SizedBox(height: 20),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Choose Your Language',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20,
                  ),
                  Text('اختيار اللغة',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomB(
                text: "English",
                backgroundColor: const Color.fromARGB(255, 236, 231, 227),
                textColor: const Color.fromARGB(255, 236, 130, 70),
                borderRadius: 20.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnboardingScreen(),
                      ));
                },
                borderColor: const Color.fromARGB(96, 255, 252, 252),
              ),
              SizedBox(width: 20),
              CustomB(
                text: "عربي",
                backgroundColor: const Color.fromARGB(255, 248, 246, 245),
                textColor: const Color.fromARGB(255, 12, 12, 12),
                borderRadius: 20.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnboardingScreen(),
                      ));
                },
                borderColor: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomB extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final Color borderColor;
  final VoidCallback onPressed;

  CustomB({
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.borderRadius,
    required this.borderColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 18),
      ),
    );
  }
}
