import 'package:flutter/material.dart';
import 'package:project1/commenwidget.dart';
import 'package:project1/registrationmodule/quesions/register5.dart';

void main() {
  runApp(MaterialApp(
    home: Reg4(),
    debugShowCheckedModeBanner: false,
  ));
}

class Reg4 extends StatefulWidget {
  @override
  _Reg4State createState() => _Reg4State();
}

class _Reg4State extends State<Reg4> {
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
                    width: 350 * .40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.deepOrange,
                    ),
                  ),
                  Container(
                    height: 15,
                    width: 350 * .60,
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
                  text: 'Human Resources: ',
                  size: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),

              /// **Question 1**
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: customText(
                  text: '7. What’re the languages in scope?',
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
                      '8. And if more than one language, please specify the percentage of cases handled for each language (Example: 70% Calls in Arabic – 30% in English)',
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
                      '9. Language proficiency levels needed for each language required according to Common European Framework of Reference for Languages (CEFR) standards (Example: English A1 or A2 or B1 or B2 or C1 or C2)',
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
                            builder: (context) => Reg5(),
                          ));
                    }
                  },
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: customText(
                  text: 'Out of 3/7 Questions',
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
