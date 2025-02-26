import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/registrationmodule/packagesAnslogin/intraction.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Services(),
    ),
  );
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 254, 252, 252),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: SvgPicture.network(
              'https://www.svgrepo.com/show/131073/left-arrow.svg',
              height: 24,
              width: 24,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 248, 65, 9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Intraction()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/login.png',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'Our Services',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: "DMSans"),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Please select our services",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              ListView(
                shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics(),
                children: [
                  serviceCard(
                      "assets/images/firstservice.png", "Intraction centre"),
                  serviceCard("assets/images/scnsrvce.png",
                      "Outbound & Customer Retention"),
                  serviceCard(
                      "assets/images/3rdservce.png", "Quality Assurance"),
                  serviceCard(
                      "assets/images/4thservice.png", "Analytics & Reporting"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget serviceCard(String imagePath, String text) {
    return Container(
      width: double.infinity,
      height: 135,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 201, 154, 0.976).withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            fit: BoxFit.none,
          ),
          Center(
            child: Container(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
