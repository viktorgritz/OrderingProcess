import 'package:flutter/material.dart';
import 'package:ordering_process/navigation_buttons.dart';

import 'form_widget.dart';

class ContactForm extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();
  ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            FormWidget(formKey: widget._formKey),
            Expanded(
              child: NavigationButtons(
                backButton: () => Navigator.of(context).pop(),
                nextButton: () {
                  if (widget._formKey.currentState!.validate()) {
                    print('successfull');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
