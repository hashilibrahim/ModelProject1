import 'package:flutter/material.dart';
import 'package:project1/commenwidget.dart';
import 'package:project1/registrationmodule/quesions/registr7.dart';

void main() {
  runApp(MaterialApp(
    home: Reg6(),
    debugShowCheckedModeBanner: false,
  ));
}

class Reg6 extends StatefulWidget {
  @override
  _Reg6State createState() => _Reg6State();
}

class _Reg6State extends State<Reg6> {
  final _formKey = GlobalKey<FormState>(); // Key for form validation

  // Controllers for text fields
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 15,
                    width: 350 * .70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.deepOrange,
                    ),
                  ),
                  Container(
                    height: 15,
                    width: 350 * .30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.white60,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),

              /// **Title**
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: customText(
                  text: 'Information Technology: ',
                  size: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Text('A. Voice solution:'),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: customText(
                  text: 'Do you have a Private Branch Exchange “PBX”? ',
                  fontWeight: FontWeight.w600,
                  size: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: buildCommonTextFormField(
                  bgColor: Colors.transparent,
                  hintText: 'Answer',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: _controller1,
                  context: context,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'This field cannot be empty';
                    }
                    return null;
                  },
                ),
              ),

              /// **Question 2**
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: customText(
                  text:
                      'Do you have a physical existence in the listed countries in scope?.',
                  fontWeight: FontWeight.w600,
                  size: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: buildCommonTextFormField(
                  bgColor: Colors.transparent,
                  hintText: 'Answer',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: _controller2,
                  context: context,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'This field cannot be empty';
                    }
                    return null;
                  },
                ),
              ),

              /// **Question 3**
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: customText(
                  text:
                      'What’s the expected maximum number of concurrent calls?',
                  fontWeight: FontWeight.w600,
                  size: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: buildCommonTextFormField(
                  bgColor: Colors.transparent,
                  hintText: 'Answer',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  controller: _controller3,
                  context: context,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'This field cannot be empty';
                    }
                    return null;
                  },
                ),
              ),

              /// **Question 3**
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: customText(
                  text:
                      'Do you have a short number / Toll-free number? If yes, share ',
                  fontWeight: FontWeight.w600,
                  size: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: buildCommonTextFormField(
                  bgColor: Colors.transparent,
                  hintText: 'Answer',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  controller: _controller3,
                  context: context,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'This field cannot be empty';
                    }
                    return null;
                  },
                ),
              ),

              /// **Button**
              SizedBox(height: 18),
              Center(
                child: customButton(
                  name: 'Next',
                  textColor: Colors.white,
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15),
                  height: 55,
                  width: 150,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Reg7(),
                          ));
                    }
                  },
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: customText(
                  text: 'Out of 5/7 Questions',
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
