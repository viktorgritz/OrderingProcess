import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ordering_process/Model/label.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:ordering_process/model/person.dart';
import 'package:ordering_process/navigation_buttons.dart';
import 'package:provider/provider.dart';

import 'form_widget.dart';

class ContactForm extends StatefulWidget {
  final _formKeyE = GlobalKey<FormState>();
  final _formKeyA = GlobalKey<FormState>();
  late Person recipient;
  late Person sender;
  ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    final shippingLabel = ModalRoute.of(context)!.settings.arguments as Label;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                FormWidget(
                  title: 'Empfänger',
                  formKey: widget._formKeyE,
                ),
                FormWidget(
                  title: 'Absender',
                  formKey: widget._formKeyA,
                ),
                Consumer<TotalInformation>(
                  builder: (context, totalInformation, child) {
                    totalInformation.label = shippingLabel;
                    return NavigationButtons(
                      backButton: () => Navigator.of(context).pop(),
                      nextButton: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        if (widget._formKeyE.currentState!.validate() &
                            widget._formKeyA.currentState!.validate()) {
                          Navigator.of(context).pushNamed(
                            '/overview_screen',
                            arguments: totalInformation,
                          );
                        } else {
                          Fluttertoast.showToast(
                              msg: 'Something went wrong, please try again');
                        }
                      },
                    );
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
