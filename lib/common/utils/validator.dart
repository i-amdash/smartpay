

class FormHelpers{
  static customValidation(String name,value){
    switch(name){
      case 'email':
        return validateEmail(value);
      case 'password':
        return validatePassword(value);
      case 'code':
        return validateRegisterCode(value);
      case 'pin':
        return validatePin(value);
      default:
        validateText(value, name);
    }
  }
  static validateText(value, String name) {
    if (value.length == 0 || value == null) {
      return '$name is required';
    } else {
      return null;
    }
  }

  static String validateRegisterCode(value) {
    if (value.isEmpty) {
      return 'Enter code sent to your mail';
    } else if (value.length != 6) {
      return 'Code must be 6 digits';
    } else {
      return '';
    }
  }

  static validatePassword(String value) {
    if (value.trim().isEmpty) {
      return 'Enter Valid Password';
    } else if (value.length <= 5) {
      return 'Password must be minimum of 6';
    } else {
      return null;
    }
  }

  static validatePin(String value) {
    if (value.trim().isEmpty) {
      return 'Enter 5 digit number';
    } else if (value.trim().length <= 3) {
      return 'Pin must be 5 digit';
    }
    return null;
  }

  static validateEmail(String value) {
    // Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (!regex.hasMatch(value)) {
      return 'Enter Valid Email';
    } else {
      return null;
    }
  }

}