import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  String regex;
  String errorMessage;
  int textLength;
  TextInputType textType;
  String label;
  bool isRequired;
  Function(String) callback;
  CustomTextFormField({
    required this.regex,
    required this.errorMessage,
    required this.label,
    required this.callback,
    this.textType = TextInputType.text,
    this.textLength = 200,
    this.isRequired = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: TextFormField(
        keyboardType: textType,
        inputFormatters: [LengthLimitingTextInputFormatter(textLength)],
        decoration: InputDecoration(
          labelText: label,
          //hintText: hintText,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlue, width: 2),
          ),
        ),
        validator: (value) {
          RegExp nameRegex = RegExp(regex);
          if (label.contains('Email')) {
            if (value != null &&
                value.isNotEmpty &&
                !isRequired &&
                !nameRegex.hasMatch(value)) {
              return errorMessage;
            } else {
              if (value != null) {
                callback(value);
              }
              return null;
            }
          }
          if ((value == null || value.isEmpty || nameRegex.hasMatch(value)) &&
              isRequired) {
            return errorMessage;
          } else if (value != null &&
              value.isNotEmpty &&
              !isRequired &&
              nameRegex.hasMatch(value)) {
            return errorMessage;
          } else {
            if (value != null) {
              callback(value);
            }
            return null;
          }
        },
      ),
    );
  }
}
