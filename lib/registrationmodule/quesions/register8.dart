import 'package:flutter/material.dart';
import 'package:project1/commenwidget.dart';
import 'package:project1/registrationmodule/quesions/done.dart';

void main() {
  runApp(MaterialApp(
    home: Reg8(),
    debugShowCheckedModeBanner: false,
  ));
}

class Reg8 extends StatefulWidget {
  @override
  _Reg8State createState() => _Reg8State();
}

class _Reg8State extends State<Reg8> {
  final _formKey = GlobalKey<FormState>(); // Key for form validation
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
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              customText(
                  text: 'C. Omnichannel:  ',
                  size: 16,
                  fontWeight: FontWeight.w600),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: customText(
                  text:
                      'Do you have a tool / Omnichannel solution to manage the voice and non-voice channels in scope? ',
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
                      'If not, please share the required channels to set the proper tool (Voice, email, web chat, WhatsApp chat, Social Media messaging..',
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
                      'Please specify the social media messages channels required (Facebook, Twitter, Instagram, YouTube)',
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
                            builder: (context) => Complte(),
                          ));
                    }
                  },
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: customText(
                  text: 'Out of 7/7 Questions',
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
