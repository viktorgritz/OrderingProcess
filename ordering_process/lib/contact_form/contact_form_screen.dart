import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ordering_process/Model/label.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:ordering_process/model/person.dart';
import 'package:ordering_process/navigation_buttons.dart';
import 'package:provider/provider.dart';

import 'form_widget.dart';

class ContactFormScreen extends StatefulWidget {
  final _formKeyE = GlobalKey<FormState>();
  final _formKeyA = GlobalKey<FormState>();
  late Person recipient;
  late Person sender;
  ContactFormScreen({Key? key}) : super(key: key);

  @override
  State<ContactFormScreen> createState() => _ContactFormScreenState();
}

class _ContactFormScreenState extends State<ContactFormScreen> {
  @override
  Widget build(BuildContext context) {
    final shippingLabel = ModalRoute.of(context)!.settings.arguments as Label;
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontaktformular'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey[200],
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
                              msg: 'Bitte versuchen Sie es nochmal',
                              backgroundColor: Colors.deepOrange,
                            );
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
      ),
    );
  }
}
