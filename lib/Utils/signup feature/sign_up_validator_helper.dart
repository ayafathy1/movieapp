// ignore_for_file: body_might_complete_normally_nullable

class SignUpValidatorHelper {

  String? usernameValidator(String? username) {
    if (RegExp(
        r"^[\p{L} ,.'-]*$",
        caseSensitive: false, unicode: true, dotAll: true)
        .hasMatch(username!)
    ) {

    } else {
      return "   Enter Correct User Name";
    }
  }

  String? emailValidator(String? email) {
    if (RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(email!)) {

    }
    else {
      return "   Enter Correct Email";
    }
  }

  String? phoneValidator(String? phone) {
    if (RegExp(
        r"^\+?0[0-9]{10}$")
        .hasMatch(phone!)) {

    }

    // ignore: unused_element
    String? passwordValidator(String? password) {
      if (RegExp(
          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
          .hasMatch(password!)) {

      } else {
        return "   Enter Correct password";
      }
    }
  }
}

String? confirmpasswordValidator(String? password) {
  if (RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
      .hasMatch(password!)) {

  } else {
    return "   Enter Correct password";
  }
}

