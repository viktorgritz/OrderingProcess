import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ordering_process/Model/label.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:ordering_process/constants/enums.dart';
import 'package:ordering_process/generated/l10n.dart';
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
        title: Text(S.of(context).contactFormAppBarTitle),
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
                    title: S.of(context).recipientTitle,
                    formKey: widget._formKeyE,
                    personType: PersonType.recipient,
                  ),
                  FormWidget(
                    title: S.of(context).senderTitle,
                    formKey: widget._formKeyA,
                    personType: PersonType.sender,
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
                              msg: S.of(context).contactFormToastMessage,
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
