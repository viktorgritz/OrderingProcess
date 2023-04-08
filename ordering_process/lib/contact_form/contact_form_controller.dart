class ContactFormController {
  String? validate(
    String regex,
    String label,
    String? value,
    bool isRequired,
    String errorMessage,
    Function(String) callback,
  ) {
    RegExp nameRegex = RegExp(regex);
    if (label.contains('E-Mail')) {
      return _validateEmail(value, nameRegex, errorMessage, callback);
    }
    if ((value == null || value.trim().isEmpty || nameRegex.hasMatch(value)) &&
        isRequired) {
      return errorMessage;
    } else if (value != null &&
        value.trim().isNotEmpty &&
        !isRequired &&
        nameRegex.hasMatch(value)) {
      return errorMessage;
    } else {
      if (value != null) {
        callback(value);
      }
      return null;
    }
  }

  String? _validateEmail(
    String? value,
    RegExp nameRegex,
    String errorMessage,
    Function(String) callback,
  ) {
    if (value != null && value.isNotEmpty && !nameRegex.hasMatch(value)) {
      return errorMessage;
    } else {
      if (value != null) {
        callback(value);
      }
      return null;
    }
  }
}
