import 'package:flutter/material.dart';
import 'package:project1/commenwidget.dart';
import 'package:project1/registrationmodule/quesions/register3.dart';

void main() {
  runApp(MaterialApp(
    home: Reg2(),
    debugShowCheckedModeBanner: false,
  ));
}

class Reg2 extends StatefulWidget {
  @override
  _Reg2State createState() => _Reg2State();
}

class _Reg2State extends State<Reg2> {
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
                    width: 350 * .15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.deepOrange,
                    ),
                  ),
                  Container(
                    height: 15,
                    width: 350 * .85,
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
                  text: 'Workforce Management\nRequirements:',
                  size: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),

              /// **Question 1**
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: customText(
                  text: '1. What’s the current headcount?',
                  fontWeight: FontWeight.w500,
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
                      '2. Please share the historical data per interval for all transactions in scope for six months / 1-year performance.',
                  fontWeight: FontWeight.w500,
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
                      '3. What’s the estimated peak time across all channels?',
                  fontWeight: FontWeight.w500,
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
                            builder: (context) => Reg3(),
                          ));
                    }
                  },
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: customText(
                  text: 'Out of 1/7 Questions',
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
