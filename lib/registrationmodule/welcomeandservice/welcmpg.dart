import 'package:flutter/material.dart';
import 'package:project1/registrationmodule/onboarding/firstpage.dart';
import 'package:project1/registrationmodule/welcomeandservice/service.dart';

void main() {
  runApp(MaterialApp(
    home: HOME3(),
    debugShowCheckedModeBanner: false,
  ));
}

class HOME3 extends StatefulWidget {
  const HOME3({super.key});

  @override
  State<HOME3> createState() => _HOME3State();
}

class _HOME3State extends State<HOME3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Vector 648.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/welcomup.png',
                    width: 200,
                    height: 100,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 35),
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DMSans',
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Text(
                      "Lorem ipsum dolor sit amet consectetur. Etiam ante odio lacus pellentesque sed urna orci orci maecenas. Ut ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'DMSans',
                        fontSize: 14,
                        color: const Color.fromARGB(255, 78, 77, 77),
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 250, top: 85, bottom: 0),
                    child: Container(
                      height: 100,
                      width: 248,
                      color: Colors.transparent,
                      child: Image.asset(
                        'assets/images/welcomdown.png',
                        width: 200,
                        height: 90,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: CustomB(
                      text: 'Agent',
                      backgroundColor: Color.fromARGB(255, 241, 183, 74),
                      textColor: Colors.white,
                      borderRadius: 50,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Services()),
                        );
                      },
                      borderColor: Color.fromARGB(255, 241, 183, 74),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: CustomB(
                      text: 'Customer',
                      backgroundColor: const Color.fromARGB(255, 237, 95, 56),
                      textColor: const Color.fromARGB(255, 233, 229, 228),
                      borderRadius: 50,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Services()),
                        );
                      },
                      borderColor: const Color.fromARGB(255, 237, 95, 56),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: CustomB(
                      text: 'Continue as Guest',
                      backgroundColor: const Color.fromARGB(209, 249, 91, 0),
                      textColor: Colors.white,
                      borderRadius: 50,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Services()),
                        );
                      },
                      borderColor: const Color.fromARGB(209, 249, 91, 0),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
