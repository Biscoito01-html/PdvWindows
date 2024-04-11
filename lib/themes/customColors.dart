import 'package:flutter/material.dart';

class CustomColors {
// Red danger
  static const Color danger = Color(0xFFE53935);
  static const Color dangerLight = Color.fromARGB(255, 230, 103, 101);
  static const Color dangerDark = Color(0xFFB71C1C);

  // Green success
  static const Color success = Color(0xFF2E7D32);
  static const Color successLight = Color.fromARGB(255, 101, 230, 103);
  static const Color successDark = Color(0xFF1B5E20);

  // Yellow warning
  static const Color warning = Color.fromARGB(255, 237, 194, 2);
  static const Color warningLight = Color.fromARGB(255, 230, 103, 101);
  static const Color warningDark = Color(0xFFE65100);

  // Blue info
  static const Color info = Color.fromARGB(255, 53, 154, 231);
  static const Color infoLight = Color.fromARGB(255, 101, 230, 103);
  static const Color infoDark = Color(0xFF0D47A1);

  // Primary color
  static const Color primary = Color.fromARGB(255, 8, 42, 156);
  static const Color primaryDark = Color.fromARGB(57, 213, 205, 241);
  static const Color primaryLight = Color.fromARGB(255, 159, 165, 221);

  //Text color
  static const Color text = Colors.white;
  static const Color textDark = Color.fromARGB(255, 97, 96, 96);

  static const Gradient gradient = LinearGradient(colors: [
    Color.fromARGB(255, 8, 42, 156),
    Color.fromARGB(255, 12, 36, 255),
    Color.fromARGB(255, 8, 42, 156),
  ]);
}
