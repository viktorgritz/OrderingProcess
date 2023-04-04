import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'contact_form_controller.dart';

class CustomTextFormField extends StatelessWidget {
  final ContactFormController contactFormController = ContactFormController();
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
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: TextFormField(
          keyboardType: textType,
          inputFormatters: [LengthLimitingTextInputFormatter(textLength)],
          decoration: InputDecoration(
            labelText: label,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlue, width: 2),
            ),
          ),
          validator: (value) {
            return contactFormController.validate(
              regex,
              label,
              value,
              isRequired,
              errorMessage,
              callback,
            );
          },
        ),
      ),
    );
  }
}
