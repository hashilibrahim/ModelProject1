import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/commenwidget.dart';
import 'package:flutter/gestures.dart';
import 'package:project1/registrationmodule/quesions/privecyandpolcy/privacyandterms.dart';
import 'package:project1/registrationmodule/quesions/register2.dart';
import 'package:project1/registrationmodule/quesions/termsandcondition.dart';

void main() {
  runApp(MaterialApp(
    home: Reg1(),
    debugShowCheckedModeBanner: false,
  ));
}

class Reg1 extends StatefulWidget {
  const Reg1({super.key});

  @override
  _Reg1State createState() => _Reg1State();
}

class _Reg1State extends State<Reg1> {
  List<String> workScopes = [
    'Sales',
    'Customer Queries',
    'Complaint Management',
    'Business'
  ];

  String selectedScope = 'Sales';
  String? selectedFileName;
  bool _isChecked = false;

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        selectedFileName = result.files.single.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Our Team!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: 10),
                  customText(
                    text:
                        'Please fill out the following information to\n        complete your registration',
                    size: 14,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
            // Wrap the Column with SingleChildScrollView
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customText(
                text: 'Company Name',
                size: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            buildCommonTextFormField(
                bgColor: Colors.transparent,
                hintText: 'Charlene Reed ',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: TextEditingController(),
                context: context),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customText(
                text: 'Website',
                size: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            buildCommonTextFormField(
                bgColor: Colors.transparent,
                hintText: 'charlenereed@gmail.com ',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                controller: TextEditingController(),
                context: context),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customText(
                text: 'Specify the scope of work',
                size: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: DropdownButton<String>(
                value: selectedScope,
                isExpanded: true,
                items: workScopes.map((String scope) {
                  return DropdownMenuItem<String>(
                    value: scope,
                    child: Text(scope),
                  );
                }).toList(),
                onChanged: (String? newScope) {
                  setState(() {
                    selectedScope = newScope!;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customText(
                  text:
                      'Are there any specific regulations or compliance requirements (e.g., data privacy laws) we must know?',
                  size: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              buildCommonTextFormField(
                bgColor: Colors.transparent,
                hintText: 'Text ',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: TextEditingController.fromValue(null),
                context: context,
              ),
              SizedBox(height: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: customText(
                    text:
                        'How does the customer measure their customer satisfaction?',
                    size: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                buildCommonTextFormField(
                    bgColor: Colors.transparent,
                    hintText: 'Text ',
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: TextEditingController(),
                    context: context),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: customText(
                        text:
                            'What is your policy for handling sensitive customer information? ',
                        size: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    buildCommonTextFormField(
                        bgColor: Colors.transparent,
                        hintText: 'Text ',
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        controller: TextEditingController(),
                        context: context),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: customText(
                            text:
                                'Do we need to follow any existing customer service scripts or guidelines? ',
                            size: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        buildCommonTextFormField(
                            bgColor: Colors.transparent,
                            hintText: 'Text ',
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            controller: TextEditingController(),
                            context: context),
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: customText(
                                text:
                                    'Whats the Product / Service Knowledge training duration?  ',
                                size: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            buildCommonTextFormField(
                                bgColor: Colors.transparent,
                                hintText: 'Text ',
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                                controller: TextEditingController(),
                                context: context),
                            SizedBox(height: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: customText(
                                    text:
                                        'What are the most common customer service issues the client receives inquiries about?',
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                buildCommonTextFormField(
                                    bgColor: Colors.transparent,
                                    hintText: 'Text ',
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    controller: TextEditingController(),
                                    context: context),
                                SizedBox(height: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: customText(
                                        text:
                                            'Please share the expected launch date for operations',
                                        size: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    buildCommonTextFormField(
                                        bgColor: Colors.transparent,
                                        hintText: 'Text ',
                                        keyboardType: TextInputType.text,
                                        textInputAction: TextInputAction.go,
                                        controller: TextEditingController(),
                                        context: context),
                                    SizedBox(height: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: customText(
                                            text: 'Upload company agreement',
                                            size: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        GestureDetector(
                                          onTap: pickFile,
                                          child: Container(
                                            height: 50,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                                width: 1,
                                              ),
                                              color: Colors.transparent,
                                            ),
                                            alignment: Alignment.center,
                                            child: Row(
                                              children: [
                                                IconButton(
                                                  icon: Icon(Icons.upload_file),
                                                  onPressed: () {},
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  selectedFileName ?? "Upload",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                  ),
                                                  textAlign: TextAlign.right,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: _isChecked,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  _isChecked = value!;
                                                });
                                              },
                                            ),
                                            Expanded(
                                              child: RichText(
                                                text: TextSpan(
                                                  text: 'I agree to The ',
                                                  style: const TextStyle(
                                                      color: Colors.black),
                                                  children: [
                                                    TextSpan(
                                                      text: 'Terms of Service',
                                                      style: const TextStyle(
                                                          color: Colors
                                                              .deepOrange),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              // Handle Terms of Service tap

                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              TermsConditionsPage()));
                                                            },
                                                    ),
                                                    const TextSpan(
                                                        text: ' and '),
                                                    TextSpan(
                                                      text: 'Privacy Policy',
                                                      style: const TextStyle(
                                                          color: Colors
                                                              .deepOrange),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            PrivacyPolicyPage()),
                                                              );
                                                            },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: ElevatedButton(
                                            onPressed: _isChecked
                                                ? () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              Reg2(),
                                                        ));
                                                  }
                                                : null,
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.deepOrange,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 16),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            child: const Text(
                                              'Next',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ]),
            ])
          ]),
        )));
  }
}
