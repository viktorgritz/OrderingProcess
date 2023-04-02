import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const FormWidget({required this.formKey, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Empfänger'),
              ),
              CustomTextFormField(
                hintText: 'Vorname',
                regex: '[^a-zA-Z]',
                errorMessage: 'Bitte geben Sie einen gültigen Vornamen ein',
              ),
              CustomTextFormField(
                hintText: 'Nachname',
                regex: '[^a-zA-Z]',
                errorMessage: 'Bitte geben Sie einen gültigen Nachnamen ein',
              ),
              Row(
                children: [
                  Flexible(
                    flex: 5,
                    child: CustomTextFormField(
                      hintText: 'Straße',
                      regex: '[^a-zA-Z]',
                      errorMessage:
                          'Bitte geben Sie einen gültigen Nachnamen ein',
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    flex: 1,
                    child: CustomTextFormField(
                      hintText: 'Nr.',
                      regex: '[^a-zA-Z]',
                      errorMessage:
                          'Bitte geben Sie einen gültigen Nachnamen ein',
                    ),
                  ),
                ],
              ),
              CustomTextFormField(
                hintText: 'PLZ',
                //TODO replace Regex for PLZ
                regex: '[^[A-Z]{1,10}\$]',
                errorMessage: 'Bitte geben Sie einen gültigen PLZ ein',
              ),
              CustomTextFormField(
                hintText: 'Wohnort',
                regex: '[^a-zA-Z]',
                errorMessage: 'Bitte geben Sie einen gültigen Nachnamen ein',
              ),
              CustomTextFormField(
                hintText: 'Email',
                regex: '[^a-zA-Z]',
                errorMessage: 'Bitte geben Sie einen gültigen Nachnamen ein',
              ),
            ],
          ),
        ));
  }
}

class CustomTextFormField extends StatelessWidget {
  String hintText;
  String regex;
  String errorMessage;
  CustomTextFormField({
    required this.hintText,
    required this.regex,
    required this.errorMessage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
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
