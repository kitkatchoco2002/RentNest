import 'package:flutter/material.dart';

class RChipTheme{
  RChipTheme._();

  static ChipThemeData lightChipThemeData = ChipThemeData(
    disabledColor: Color.fromARGB(123, 158, 158, 158),
    labelStyle: const TextStyle(color:  Colors.black),
    selectedColor: Color.fromARGB(255, 6, 32, 54),
    padding: const EdgeInsets.symmetric(horizontal:12.0, vertical:12),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipThemeData = ChipThemeData(
    disabledColor: Color.fromARGB(255, 158, 158, 158),
    labelStyle: const TextStyle(color:  Colors.white),
    selectedColor: Color.fromARGB(255, 6, 32, 54),
    padding: const EdgeInsets.symmetric(horizontal:12.0, vertical:12),
    checkmarkColor: Colors.white,);
}