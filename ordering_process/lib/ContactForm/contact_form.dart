import 'package:flutter/material.dart';
import 'package:ordering_process/navigation_buttons.dart';

import 'form_widget.dart';

class ContactForm extends StatefulWidget {
  final _formKeyE = GlobalKey<FormState>();
  final _formKeyA = GlobalKey<FormState>();
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
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                FormWidget(title: 'Empfänger', formKey: widget._formKeyE),
                FormWidget(title: 'Absender', formKey: widget._formKeyA),
                NavigationButtons(
                  backButton: () => Navigator.of(context).pop(),
                  nextButton: () {
                    if (widget._formKeyE.currentState!.validate() &&
                        widget._formKeyA.currentState!.validate()) {
                      print('successfull');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
