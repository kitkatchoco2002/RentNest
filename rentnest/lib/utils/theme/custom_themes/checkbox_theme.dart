import 'package:flutter/material.dart';

class RCheckBoxTheme{
  RCheckBoxTheme._();

  static CheckboxThemeData lightChechBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateColor.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return const Color.fromARGB(255, 171, 2, 30);
      }else{
        return const Color.fromARGB(255, 34, 33, 33);
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return const Color.fromARGB(255, 184, 194, 193);
      }else{
        return Colors.transparent;
      }
    })
  );

  static CheckboxThemeData darkChechBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateColor.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return const Color.fromARGB(255, 171, 2, 30);
      }else{
        return const Color.fromARGB(255, 34, 33, 33);
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return const Color.fromARGB(255, 184, 194, 193);
      }else{
        return Colors.transparent;
      }
    }));
}