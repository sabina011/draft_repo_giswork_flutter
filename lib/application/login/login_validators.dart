String? emailValidator(String? value) {
  if (value!.isEmpty) {
    return "User name is empty";
  }
  return null;
}

String? passwordValidator(String? value) {
  if (value!.isEmpty) {
    return "Password is empty";
  }
  return null;
}

bool isNotMatchEmail(String userInput) {
  bool isValidated;
  var dotPosition = userInput.indexOf(".");
  var atPosition = userInput.indexOf("@");

  if (atPosition >= 1 || dotPosition - atPosition >= 2) {
    isValidated = true;
  } else {
    isValidated = false;
  }

  return isValidated;
}
