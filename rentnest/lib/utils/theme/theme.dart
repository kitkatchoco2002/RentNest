import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:rentnest/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:rentnest/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:rentnest/utils/theme/custom_themes/chip_theme.dart';
import 'package:rentnest/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:rentnest/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:rentnest/utils/theme/custom_themes/text_field_theme.dart';
import 'package:rentnest/utils/theme/custom_themes/text_theme.dart';

class RAppTheme {
  RAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: const Color.fromARGB(255, 6, 32, 54),
    textTheme: RTextTheme.lightTextTheme,
    chipTheme: RChipTheme.lightChipThemeData,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: RAppBarTheme.lightAppBarTheme,
    checkboxTheme: RCheckBoxTheme.lightChechBoxTheme,
    bottomSheetTheme: RBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: RElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ROutlineButtonTheme.lightOUtlineButtonTheme,
    inputDecorationTheme: RTextFieldTheme.lightTextFieldTheme,
    iconTheme: const IconThemeData(color: RColors.primary),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: const Color.fromARGB(255, 6, 32, 54),
    textTheme: RTextTheme.darkTextTheme,
    chipTheme: RChipTheme.darkChipThemeData,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: RAppBarTheme.darktAppBarTheme,
    checkboxTheme: RCheckBoxTheme.darkChechBoxTheme,
    bottomSheetTheme: RBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: RElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ROutlineButtonTheme.darkOUtlineButtonTheme,
    inputDecorationTheme: RTextFieldTheme.darkTextFieldTheme,
    iconTheme: const IconThemeData(color: RColors.accent),
  );

}