import 'package:flutter/material.dart';
import 'package:ordering_process/ShippingLabel/custom_radio_list_tile.dart';
import 'package:ordering_process/navigation_buttons.dart';

class ShippingLabel extends StatefulWidget {
  const ShippingLabel({super.key});

  @override
  State<ShippingLabel> createState() => _ShippingLabelState();
}

class _ShippingLabelState extends State<ShippingLabel> {
  String? _newValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paket Größe auswählen'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                CustomRadioListTile(
                  title: 'XS',
                  value: '10',
                  callback: (value) => setNewValue(value),
                  groupValue: _newValue,
                ),
                CustomRadioListTile(
                  title: 'S',
                  value: '20',
                  callback: (value) => setNewValue(value),
                  groupValue: _newValue,
                ),
                CustomRadioListTile(
                  title: 'M',
                  value: '30',
                  callback: (value) => setNewValue(value),
                  groupValue: _newValue,
                ),
                CustomRadioListTile(
                  title: 'L',
                  value: '40',
                  callback: (value) => setNewValue(value),
                  groupValue: _newValue,
                ),
              ],
            ),
          ),
          Expanded(
            child: NavigationButtons(
              backButton: () => Navigator.of(context).pop(),
              nextButton: () => navigateToContactForm(context),
            ),
          ),
        ],
      ),
    );
  }

  void setNewValue(String? value) {
    if (value != null) {
      setState(() {
        _newValue = value;
        print(_newValue);
      });
    }
  }

  void navigateToContactForm(BuildContext context) {
    if (_newValue != null && _newValue!.isNotEmpty) {
      Navigator.of(context).pushNamed('/contact_form', arguments: _newValue);
    }
  }
}
