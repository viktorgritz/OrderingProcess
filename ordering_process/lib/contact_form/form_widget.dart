import 'package:flutter/material.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:ordering_process/constants/app_constants.dart';
import 'package:provider/provider.dart';

import 'custom_text_form_field.dart';

class FormWidget extends StatelessWidget {
  final String title;
  final GlobalKey<FormState> formKey;
  const FormWidget({
    required this.title,
    required this.formKey,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Consumer<TotalInformation>(
          builder: (context, totalInformation, child) {
            return Column(
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
                  label: 'Vorname (Optional)',
                  regex: FormRegex.plainTextRegex,
                  errorMessage: 'Bitte geben Sie einen gültigen Vornamen ein',
                  isRequired: false,
                  callback: (value) => title == 'Empfänger'
                      ? totalInformation.recipient.firstName = value
                      : totalInformation.sender.firstName = value,
                ),
                CustomTextFormField(
                  label: 'Nachname*',
                  regex: FormRegex.plainTextRegex,
                  errorMessage: 'Bitte geben Sie einen gültigen Nachnamen ein',
                  callback: (value) => title == 'Empfänger'
                      ? totalInformation.recipient.lastName = value
                      : totalInformation.sender.lastName = value,
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 5,
                      child: CustomTextFormField(
                        label: 'Straße*',
                        regex: FormRegex.streetRegex,
                        errorMessage:
                            'Bitte geben Sie einen gültigen Straße ein',
                        callback: (value) => title == 'Empfänger'
                            ? totalInformation.recipient.street = value
                            : totalInformation.sender.street = value,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      flex: 1,
                      child: CustomTextFormField(
                        label: 'Nr.*',
                        regex: FormRegex.numberRegex,
                        errorMessage:
                            'Bitte geben Sie einen gültigen Nachnamen ein',
                        callback: (value) => title == 'Empfänger'
                            ? totalInformation.recipient.houseNumber = value
                            : totalInformation.sender.houseNumber = value,
                      ),
                    ),
                  ],
                ),
                CustomTextFormField(
                  label: 'PLZ*',
                  regex: FormRegex.postcodeRegex,
                  errorMessage: 'Bitte geben Sie einen gültigen PLZ ein',
                  textLength: 5,
                  textType: TextInputType.number,
                  callback: (value) => title == 'Empfänger'
                      ? totalInformation.recipient.postcode = value
                      : totalInformation.sender.postcode = value,
                ),
                CustomTextFormField(
                  label: 'Wohnort*',
                  regex: FormRegex.plainTextRegex,
                  errorMessage: 'Bitte geben Sie einen gültigen Wohnort ein',
                  callback: (value) => title == 'Empfänger'
                      ? totalInformation.recipient.city = value
                      : totalInformation.sender.city = value,
                ),
                CustomTextFormField(
                  label: 'Email (Optional)',
                  regex: FormRegex.emailRegex,
                  errorMessage: 'Bitte geben Sie einen gültigen Email ein',
                  isRequired: false,
                  callback: (value) => title == 'Empfänger'
                      ? totalInformation.recipient.email = value
                      : totalInformation.sender.email = value,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
