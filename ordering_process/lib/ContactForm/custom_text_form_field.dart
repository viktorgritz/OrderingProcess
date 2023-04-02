import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  String regex;
  String errorMessage;
  int textLength;
  TextInputType textType;
  String label;
  CustomTextFormField({
    required this.regex,
    required this.errorMessage,
    this.textType = TextInputType.text,
    this.textLength = 200,
    required this.label,
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
          if (value == null || value.isEmpty || nameRegex.hasMatch(value)) {
            return errorMessage;
          } else {
            return null;
          }
        },
      ),
    );
  }
}
