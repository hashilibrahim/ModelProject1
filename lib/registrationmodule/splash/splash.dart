import 'package:flutter/material.dart';
import 'package:project1/registrationmodule/onboarding/firstpage.dart';

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
      home: const Splash(), 
    );
  }
}


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState(); 
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState(); 
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement( 
        context,
        MaterialPageRoute(builder: (context) =>  HOME()), 
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: const Color.fromARGB(255, 225, 80, 13), 
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Image.asset(
              "assets/images/splashlogo.png", 
              height: 150, 
              width: 150,  
            ),        

            Column( 
              children: [
                Image.asset( 
                  "assets/images/splashlogoname.png", 
                  width: 150,
       
                ),
                const Text(
                  "Lorem Ipsum", 
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 16, 
                    fontFamily: 'DMSans'      
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

   