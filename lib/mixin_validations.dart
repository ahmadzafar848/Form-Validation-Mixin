final RegExp emailValid = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

bool isValueEmpty(String value) {
  if (value.isEmpty) {
    return true;
  }
  return false;
}

mixin TextFormFieldValidationMixin {
  String? isPasswordValid(String? value) {
    if (isValueEmpty(value!)) {
      return 'Password can not be Empty';
    }
    if (value.length < 6) {
      return 'Password min length is 6 Chars';
    }
    return null;
  }

  String? isEmailValid(String? value) {
    if (isValueEmpty(value!)) {
      return 'Email can not be empty';
    }
    if (emailValid.hasMatch(value)) {
      return null;
    }
    return 'Email is not Valid';
  }
}
