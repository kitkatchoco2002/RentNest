class RValidator {
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is required';
    } 
  
  //regular expression for email verification
  final emailRegExp =  RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  if(!emailRegExp.hasMatch(value)){
    return 'Invalid Email';
  }

  return null;
  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password is required';
    }

    //Check for minimum password length
    if(value.length < 6){
      return 'Password must be atleast 6 characters long';
    }

    //Check for uppercase
    if(!value.contains(RegExp('r[A-Z]'))){
      return 'Password must contain atleast one uppercase letter';
    }

    //check for numbers
    if(!value.contains(RegExp('r[0-9]'))){
      return 'Password must contain atleast one number';
    }

    //Check for special Character
    if(!value.contains(RegExp('r[!@#%^&*(),.?":{}|<>]'))){
      return 'Password must contain atleast one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Phone number is required';
    } 

    //Regular  expression for phone number validation 
    final phoneRegExp = RegExp(r'^\d{10,11}$');

    if(!phoneRegExp.hasMatch(value)){
      return 'invalid phone number';
    }

    return null;
  }


}