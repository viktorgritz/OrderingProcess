import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:ordering_process/Model/label.dart';
import 'package:ordering_process/ShippingLabel/custom_radio_list_tile.dart';
import 'package:ordering_process/navigation_buttons.dart';

class ShippingLabel extends StatefulWidget {
  var labels = [
    Label('XS', '10x10x10', '5', 4.99),
    Label('S', '15x15x15', '10', 9.99),
    Label('M', '20x20x20', '15', 14.99),
    Label('L', '25x25x25', '20', 19.99),
  ];
  ShippingLabel({super.key});

  @override
  State<ShippingLabel> createState() => _ShippingLabelState();
}

class _ShippingLabelState extends State<ShippingLabel> {
  late Label _newValue;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width / 2.5;

    return Scaffold(
      appBar: AppBar(
        title: Text('Paket Größe auswählen'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GroupButton<Label>(
                isRadio: true,
                onSelected: (val, index, isSelected) => setNewValue(index),
                buttons: widget.labels,
                buttonBuilder: (selected, element, context) {
                  return Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset.fromDirection(4, 3),
                          spreadRadius: 1,
                          blurRadius: 5,
                        )
                      ],
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: selected ? Colors.lightBlue[100] : Colors.white,
                    ),
                    padding: EdgeInsets.all(18),
                    width: screenWidth,
                    height: screenWidth,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text(element.title)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('Größe: ${element.size}'),
                          Text('Gewicht:  ${element.weight}'),
                          Text('Preis:  ${element.preis} Euro'),
                        ],
                      ),
                    ),
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
    );
  }

  void setNewValue(int value) {
    setState(() {
      _newValue = widget.labels[value];
      print(_newValue);
    });
  }

  void navigateToContactForm(BuildContext context) {
    Navigator.of(context).pushNamed('/contact_form', arguments: _newValue);
  }
}
