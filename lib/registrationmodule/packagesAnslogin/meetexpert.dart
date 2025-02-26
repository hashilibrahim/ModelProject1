import 'package:flutter/material.dart';
import 'package:project1/registrationmodule/packagesAnslogin/package.dart';

void main() {
  runApp(MaterialApp(
    home: MeetExpert(),
    debugShowCheckedModeBanner: false,
  ));
}

class MeetExpert extends StatefulWidget {
  const MeetExpert({super.key});

  @override
  _MeetExpertState createState() => _MeetExpertState();
}

class _MeetExpertState extends State<MeetExpert> {
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  final TextEditingController _emailController = TextEditingController();

  // Email validation function
  String? _validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email cannot be empty';
    }
    // Email regex pattern
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  void _onSendPressed() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.67,
              decoration: BoxDecoration(
                color: Color(0xFFFFEBB9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 60,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TAKE THE\nNEXT STEP',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFF5722),
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFEBB9),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFFFF5722),
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Get A Quote',
                                  style: TextStyle(
                                    color: Color(0xFFFF5722),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xFFFF5722),
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 250,
                    right: 0,
                    left: 100,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/meetL.png',
                      fit: BoxFit.none,
                    ),
                  ),
                  Positioned(
                    top: 160,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/meether.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 390,
                    right: 0,
                    left: 250,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/meetR.png',
                      fit: BoxFit.none,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Meet with an\nexpert',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 34,
                color: Color(0xFFFF5722),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            /// **Email Input Field with Validation**
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                key: _formKey,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: _validateEmail, // Using the validation function
                    decoration: InputDecoration(
                      hintText: 'Your email address',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      border: InputBorder.none,
                      suffixIcon: GestureDetector(
                        onTap: _onSendPressed, // Calling validation on tap
                        child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFFF5722),
                          ),
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
