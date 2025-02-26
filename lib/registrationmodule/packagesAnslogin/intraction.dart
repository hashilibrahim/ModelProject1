import 'package:flutter/material.dart';
import 'package:project1/registrationmodule/onboarding/firstpage.dart';
import 'package:project1/registrationmodule/packagesAnslogin/meetexpert.dart';
import 'package:project1/registrationmodule/packagesAnslogin/package.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Intraction(),
  ));
}

class Intraction extends StatelessWidget {
  const Intraction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 450,
            width: double.infinity,
            child: Image.asset(
              'assets/images/firstpagebg.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 230,
            left: 10,
            child: Row(
              children: [
                Text(
                  'INTRACTION \n CENTER',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 36,
                    fontFamily: 'Poppins-Bold.ttf',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 96),
                Image.asset(
                  'assets/images/intractio BGroup.png',
                  width: 70,
                  height: 70,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/IntractionMain.png',
                    width: 252,
                    height: 252,
                  ),
                  Image.asset(
                    'assets/images/intractionR.png',
                    width: 43,
                    height: 43,
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 350,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to our Interaction Center',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    fontFamily: "fonts/Poppins-SemiBold.ttf",
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Where Seamless Customer Interactions\nAcross Multiple Channels Are Our Top Priority.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: "fonts/Poppins-Medium.ttf",
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            left: 15,
            right: 10,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildImageContainer('assets/images/instslid1.png', 'In App'),
                  const SizedBox(width: 15),
                  _buildImageContainer(
                      'assets/images/insslide2.png', 'Inbound Call'),
                  const SizedBox(width: 15),
                  _buildImageContainer(
                      'assets/images/intrslid3.png', 'Outbound Calls'),
                  const SizedBox(width: 15),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 30,
              left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomB(
                    text: 'Meet With An Expert',
                    backgroundColor: Colors.white,
                    textColor: Colors.deepOrange,
                    borderRadius: 20,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MeetExpert()));
                    },
                    borderColor: const Color.fromARGB(255, 236, 63, 10),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomB(
                    text: 'Register Now',
                    backgroundColor: Colors.white,
                    textColor: Colors.deepOrange,
                    borderRadius: 20,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PricingCards()));
                    },
                    borderColor: const Color.fromARGB(255, 214, 55, 7),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget _buildImageContainer(String imagePath, String text) {
    return Container(
      height: 115,
      width: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(255, 223, 159, 100),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
