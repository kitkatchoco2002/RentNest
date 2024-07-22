import 'package:flutter/material.dart';

class RBottomSheetTheme{
  RBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: const Color.fromARGB(255, 184, 194, 193),
    modalBackgroundColor: const Color.fromARGB(255, 184, 194, 193),
    constraints:  const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: const Color.fromARGB(255, 6, 32, 54),
    modalBackgroundColor: const Color.fromARGB(255, 6, 32, 54),
    constraints:  const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),);
}