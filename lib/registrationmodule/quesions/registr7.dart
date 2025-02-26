import 'package:flutter/material.dart';
import 'package:project1/commenwidget.dart';
import 'package:project1/registrationmodule/quesions/register8.dart';

void main() {
  runApp(MaterialApp(
    home: Reg7(),
    debugShowCheckedModeBanner: false,
  ));
}

class Reg7 extends StatefulWidget {
  @override
  _Reg7State createState() => _Reg7State();
}

class _Reg7State extends State<Reg7> {
  final _formKey = GlobalKey<FormState>(); // Key for form validation
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

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
                    width: 350 * .85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.deepOrange,
                    ),
                  ),
                  Container(
                    height: 15,
                    width: 350 * .15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.white60,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              customText(
                  text: 'B. Tools & applications: ',
                  size: 16,
                  fontWeight: FontWeight.w600),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: customText(
                  text:
                      'Please specify the current (CRM, Tools, and Applications,) that will be used and how One Engage will access those tools (Web-based or VPN)',
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
                      'What’s the required internet bandwidth (BW) per seat for the tools & applications?  (Reply) \n\nNote: based on One Engage best practice, the required BW is around 250KB per seat & 500KB per seat (in case there are GPS / navigation tools.',
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
              SizedBox(height: 30),
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
                            builder: (context) => Reg8(),
                          ));
                    }
                  },
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: customText(
                  text: 'Out of 6/7 Questions',
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
