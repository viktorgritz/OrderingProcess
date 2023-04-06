import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:group_button/group_button.dart';
import 'package:ordering_process/Model/label.dart';
import 'package:ordering_process/constants/app_constants.dart';
import 'package:ordering_process/generated/l10n.dart';
import 'package:ordering_process/navigation_buttons.dart';

import 'group_button_item.dart';

class ShippingLabelScreen extends StatefulWidget {
  var labels = [
    Label('XS', '10x10x10', '5', 4.99),
    Label('S', '15x15x15', '10', 9.99),
    Label('M', '20x20x20', '15', 14.99),
    Label('L', '25x25x25', '20', 19.99),
  ];
  ShippingLabelScreen({super.key});

  @override
  State<ShippingLabelScreen> createState() => _ShippingLabelScreenState();
}

class _ShippingLabelScreenState extends State<ShippingLabelScreen> {
  late Label _newValue = Label.empty();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width / 2.5;

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).shippingLabelScreenAppBarTitle),
      ),
      body: Container(
        color: Colors.grey[200],
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: DefaultInsets.paddingAll18,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GroupButton<Label>(
                  isRadio: true,
                  onSelected: (val, index, isSelected) => setNewValue(index),
                  buttons: widget.labels,
                  buttonBuilder: (selected, element, context) {
                    return GroupButtonItem(
                      isSelected: selected,
                      width: screenWidth,
                      labelItem: element,
                    );
                  },
                ),
                NavigationButtons(
                  backButton: () => Navigator.of(context).pop(),
                  nextButton: () => navigateToContactForm(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void setNewValue(int value) {
    setState(() {
      _newValue = widget.labels[value];
    });
  }

  void navigateToContactForm(BuildContext context) {
    if (_newValue.title.isNotEmpty) {
      Navigator.of(context).pushNamed('/contact_form', arguments: _newValue);
    } else {
      Fluttertoast.showToast(
        msg: S.of(context).shippingLabelToastMessage,
        backgroundColor: Colors.deepOrange,
      );
    }
  }
}
