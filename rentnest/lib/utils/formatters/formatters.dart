import 'package:intl/intl.dart';
class RFormatter{

  static String formatDate(DateTime? date){
    date ??= DateTime.now(); //if no date is provided, it will use the current date and time.
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'fil-PH', symbol: '₱').format(amount);
  }

  static String formatPhoneNumber(String number){
    if(number.length == 10){
      return '(+63)  ${number.substring(0, 3)}  ${number.substring(3, 6)}  ${number.substring(6, 10)}';
    }else if(number.length == 11){
      return '(+63)  ${number.substring(1, 4)}  ${number.substring(4, 7)}  ${number.substring(7, 11)}';
    }
    return number;
  }
}