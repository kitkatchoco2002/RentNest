import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RHelperFunctions {
  static Color? getColor(String color) {
    switch (color.toLowerCase()) {
      case 'red':
        return Colors.red;
      case 'orange':
        return Colors.orange;
      case 'yellow':
        return Colors.yellow;
      case 'green':
        return Colors.green;
      case 'blue':
        return Colors.blue;
      case 'indigo':
        return Colors.indigo;
      case 'violet':
        return Colors.purple;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'grey':
        return Colors.grey;
      case 'pink':
        return Colors.pink;
      default:
        return null;
    }
  } // end of get color

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("OK"))
          ],
        );
      },
    );
  } //end of showAlert

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute( builder: (_) => screen,),);
  }// end of navigateToScreen

  static String truncateText(String text, int maxLenght){
    if(text.length <= maxLenght){
      return text;
    }else{
      return '${text.substring(0, maxLenght)}...';
    }
  }// end of truncateText

  static bool isDarkmode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }// end of isDarkMode

  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }// end of screenSize

  static double screenSizeHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }// end of screenSizeHeight

  static double screenSizeWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }// end of screenSizeWidth

  static String getFormattedDate(DateTime date, {String format = "dd MM yyyy"}){
    return DateFormat('dd-MM-yyyy').format(date);
  }// end of getFormattedDate

  static List<T> removeDuplicates<T>(List<T> list){
    return list.toSet().toList();
  }// end of removeDuplicate

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize){
    final wrappedList = <Widget>[];
    for(var i = 0; i < widgets.length; i += rowSize){
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren,));
    }
    return wrappedList;
  }

}
