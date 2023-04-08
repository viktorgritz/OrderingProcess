import 'package:flutter/material.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:ordering_process/constants/app_constants.dart';
import 'package:ordering_process/constants/enums.dart';
import 'package:ordering_process/generated/l10n.dart';
import 'package:provider/provider.dart';

import 'custom_text_form_field.dart';

class FormWidget extends StatelessWidget {
  final String title;
  final PersonType personType;
  final GlobalKey<FormState> formKey;
  const FormWidget({
    required this.title,
    required this.formKey,
    Key? key,
    required this.personType,
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
                  padding: DefaultInsets.paddingAll8,
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                CustomTextFormField(
                  label: S.of(context).firstnameTitle,
                  regex: FormRegex.plainTextRegex,
                  errorMessage: S.of(context).firstnameErrorMessage,
                  isRequired: false,
                  callback: (value) => personType == PersonType.recipient
                      ? totalInformation.recipient.firstName = value
                      : totalInformation.sender.firstName = value,
                ),
                CustomTextFormField(
                  label: S.of(context).lastnameTitle,
                  regex: FormRegex.plainTextRegex,
                  errorMessage: S.of(context).lastnameErrorMessage,
                  callback: (value) => personType == PersonType.recipient
                      ? totalInformation.recipient.lastName = value
                      : totalInformation.sender.lastName = value,
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 5,
                      child: CustomTextFormField(
                        label: S.of(context).streetTitle,
                        regex: FormRegex.streetRegex,
                        errorMessage: S.of(context).streetErrorMessage,
                        callback: (value) => personType == PersonType.recipient
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
                        label: S.of(context).numberTitle,
                        regex: FormRegex.numberRegex,
                        errorMessage: S.of(context).numberErrorMessage,
                        callback: (value) => personType == PersonType.recipient
                            ? totalInformation.recipient.houseNumber = value
                            : totalInformation.sender.houseNumber = value,
                      ),
                    ),
                  ],
                ),
                CustomTextFormField(
                  label: S.of(context).postcodeTitle,
                  regex: FormRegex.postcodeRegex,
                  errorMessage: S.of(context).postcodeErrorMessage,
                  textLength: 5,
                  textType: TextInputType.number,
                  callback: (value) => personType == PersonType.recipient
                      ? totalInformation.recipient.postcode = value
                      : totalInformation.sender.postcode = value,
                ),
                CustomTextFormField(
                  label: S.of(context).cityTitle,
                  regex: FormRegex.plainTextRegex,
                  errorMessage: S.of(context).cityErrorMessage,
                  callback: (value) => personType == PersonType.recipient
                      ? totalInformation.recipient.city = value
                      : totalInformation.sender.city = value,
                ),
                CustomTextFormField(
                  label: S.of(context).emailTitle,
                  regex: FormRegex.emailRegex,
                  errorMessage: S.of(context).emailErrorMessage,
                  isRequired: false,
                  callback: (value) => personType == PersonType.recipient
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
