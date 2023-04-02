import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_text_form_field.dart';

class FormWidget extends StatelessWidget {
  final String title;
  final GlobalKey<FormState> formKey;
  const FormWidget({required this.title, required this.formKey, Key? key})
      : super(key: key);

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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
            ),
            CustomTextFormField(
              label: 'Vorname',
              regex: '[^a-zA-Z]',
              errorMessage: 'Bitte geben Sie einen gültigen Vornamen ein',
            ),
            CustomTextFormField(
              label: 'Nachname*',
              regex: '[^a-zA-Z]',
              errorMessage: 'Bitte geben Sie einen gültigen Nachnamen ein',
            ),
            Row(
              children: [
                Flexible(
                  flex: 5,
                  child: CustomTextFormField(
                    label: 'Straße*',
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
                    label: 'Nr.*',
                    regex: '[^0-9a-z]',
                    errorMessage:
                        'Bitte geben Sie einen gültigen Nachnamen ein',
                  ),
                ),
              ],
            ),
            CustomTextFormField(
              label: 'PLZ*',
              //TODO replace Regex for PLZ
              regex: '[^0-9]',
              errorMessage: 'Bitte geben Sie einen gültigen PLZ ein',
              textLength: 5,
              textType: TextInputType.number,
            ),
            CustomTextFormField(
              label: 'Wohnort*',
              regex: '[^a-zA-Z]',
              errorMessage: 'Bitte geben Sie einen gültigen Wohnort ein',
            ),
            CustomTextFormField(
              label: 'Email',
              regex: '[^a-zA-Z]',
              errorMessage: 'Bitte geben Sie einen gültigen Email ein',
            ),
          ],
        ),
      ),
    );
  }
}
