import 'package:flutter/material.dart';

class BBB extends StatefulWidget {
  @override
  _BBBState createState() => _BBBState();
}

class _BBBState extends State<BBB> {
  String selectedButton = "None"; 

  List<Map<String, dynamic>> buttons = [
    {"text": "Green", "color": Colors.green},
    {"text": "Blue", "color": Colors.blue},
    {"text": "Red", "color": Colors.red},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("After Refactoring")), 
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "The current button: $selectedButton", 
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20), // Spacing
          ...buttons.map((btn) => buildButton(btn["text"], btn["color"])).toList(),
        ],
      ),
    );
  }

  Widget buildButton(String text, Color color) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedButton = text; 
        });
      },
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(text),
    );
  }
}

void main() {
  runApp(MaterialApp(home: BBB()));
}
