import 'package:flutter/material.dart';
import 'package:u_and_i/screen/home_screen.dart';
import 'package:u_and_i/screen/home_screen2.dart';

// void main() {
//   runApp(MaterialApp(
//     theme: ThemeData(
//       fontFamily: 'himelody',
//         textTheme: const TextTheme(
//       headline1: TextStyle(
//           color: Colors.white, fontFamily: 'parisienne', fontSize: 80.0),
//       headline2: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.w600,
//           fontSize: 60.0),
//       bodyText1: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//           fontSize: 30.0),
//       bodyText2: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//           fontSize: 30.0),
//     )),
//     home: HomeScreen(),
//   ));
// }

// Const Constructor 개념 연습용
void main() {
  runApp(MaterialApp(
    home: HomeScreen2(),
  ));
}