// import 'package:flutter/material.dart';
// import 'package:project1/sportbutton.dart';

// class Simple extends StatelessWidget {
//   const Simple({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Widget cricket = const Text(
//       "Kohli",
//       style: TextStyle(fontSize: 20),
//     );
//     Widget football = const Text(
//       "Lampard",
//       style: TextStyle(fontSize: 20),
//     );
//     Widget basketball = const Text(
//       "James",
//       style: TextStyle(fontSize: 20),
//     );

//     Widget all = Column(
//       children: [
//         cricket,
//         football,
//         cricket,
//         football,
//         basketball,
//         basketball,
//         IconButton(
//           onPressed: () {
//             print("Alarm Icon Pressed");
//           },
//           icon: const Icon(Icons.access_alarm),
//         ),
//         const SizedBox(height: 20), 
//         Bb(
//           name: "Hashil",
//           color: Colors.green,
//           text: "Flutter",
//           onPressed: () {
//             print("Button Pressed");
//           },
//         ),
//         const SizedBox(height: 10),
//         Bb(
//           name: "Another",
//           color: Colors.blue,
//           text: "Dart",
//           onPressed: () {
//             print("Second Button Pressed");
//           },
//         ),
//           const SizedBox(height: 10),
//         Bb(
//           name: "jaabbbu",
//           color: Color.fromARGB(255, 99, 223, 4),
//           text: "Dart",
//           onPressed: () {
//             print("Second Button Pressed");
//           },
//         ),
//       ],
//     );

//     return Scaffold(
//       appBar: AppBar(title: const Text("Simple Widget")),
//       body: Center(child: all),
//     );
//   }
// }

// void main() {
//   runApp(const MaterialApp(
//     home: Simple(),
//   ));
// }
