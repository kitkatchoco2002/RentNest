import 'package:flutter/material.dart';

class RColors{
  RColors._();

  //App BAsic Colors
  static const Color primary = Color(0xff062036);
  static const Color secondary =Color(0xffAB021D);
  static const Color accent =Color(0xffB8C2C1);

  // text colors
  static const Color textPrimary = Color.fromARGB(255, 13, 17, 21);
  static const Color textSecondary =Color.fromARGB(255, 105, 105, 105);
  static const Color textWhite =RColors.white;

  // background colors
  static const Color primaryBackground = Color.fromARGB(255, 240, 242, 244);
  static const Color light =Color.fromARGB(255, 240, 228, 230);
  static const Color dark =Color.fromARGB(255, 0, 10, 35);

  //background container colors
  static const Color lightContainer = Color.fromARGB(255, 222, 234, 244);
  static const Color darkContainer = RColors.white;

  //Button Colors
  static const Color buttonPrimary = Color(0xffAB021D);
  static const Color buttonSecondary =Color.fromARGB(255, 152, 152, 152);
  static const Color buttonDisabled =Color(0xffc4c4c4);

  //Border Colors
  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borderSecondary =Color(0xffe6e6e6);

  //error and validation colors
  static const Color error = Color.fromARGB(255, 211, 85, 85);
  static const Color success =Color.fromARGB(255, 85, 140, 88);
  static const Color warning = Color.fromARGB(255, 229, 156, 83);
  static const Color info =Color.fromARGB(255, 88, 147, 205);

  //neutral shades
  static const Color black = Color.fromARGB(255, 23, 23, 23);
  static const Color darkergrey =Color.fromARGB(255, 41, 41, 41);
  static const Color darkgrey =Color.fromARGB(255, 68, 68, 68);
  static const Color grey = Color.fromARGB(255, 124, 124, 124);
  static const Color white = Color(0xffffffff);
}