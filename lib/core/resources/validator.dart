class Validator {
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Plz, enter user name";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    var regEx = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (value == null || value.trim().isEmpty) {
      return "Plz, enter email";
    }
    if(!regEx.hasMatch(value)){
      return "E-mail bad format";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    var regEx = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value == null || value.trim().isEmpty) {
      return "Plz, enter password";
    }
    // if(!regEx.hasMatch(value)){
    //   return "Weak password";
    // }
    return null;
  }


  static String? validateRePassword(String? rePassword,) {
    if (rePassword == null || rePassword.trim().isEmpty) {
      return "Plz, enter password";
    }
    // if(rePassword != password ){
    //   return "Password doesn't match";
    // }
    return null;

  }

}
