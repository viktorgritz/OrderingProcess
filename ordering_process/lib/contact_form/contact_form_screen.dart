import 'package:flutter/material.dart';
import 'package:ordering_process/constants/enums.dart';
import 'package:ordering_process/generated/l10n.dart';
import 'package:ordering_process/model/person.dart';

import 'form_widget.dart';

class ContactFormScreen extends StatefulWidget {
  final GlobalKey<FormState> formKeyE;
  final GlobalKey<FormState> formKeyA;
  late Person recipient;
  late Person sender;
  ContactFormScreen({Key? key, required this.formKeyE, required this.formKeyA})
      : super(key: key);

  @override
  State<ContactFormScreen> createState() => _ContactFormScreenState();
}

class _ContactFormScreenState extends State<ContactFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: SizedBox(
          child: Column(
            children: [
              FormWidget(
                title: S.of(context).recipientTitle,
                formKey: widget.formKeyE,
                personType: PersonType.recipient,
              ),
              FormWidget(
                title: S.of(context).senderTitle,
                formKey: widget.formKeyA,
                personType: PersonType.sender,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
