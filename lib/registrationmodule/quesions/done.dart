import 'package:flutter/material.dart';
import 'package:project1/commenwidget.dart';

void main() {
  runApp(MaterialApp(
    home: Complte(),
    debugShowCheckedModeBanner: false,
  ));
}

class Complte extends StatelessWidget {
  const Complte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/illustration.png'),
        const SizedBox(
          height: 25,
        ),
        customText(
          text: '      Registration Completed',
          size: 26,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: customText(
              text:
                  '           Our team will review it and get in touch\n                                with you soon.',
              size: 14,
              fontWeight: FontWeight.w500),
        )
      ],
    ));
  }
}
