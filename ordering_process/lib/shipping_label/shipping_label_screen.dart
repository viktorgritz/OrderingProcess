import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:ordering_process/Model/label.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:provider/provider.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Consumer<TotalInformation>(
          builder: (context, totalInformation, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GroupButton<Label>(
                  isRadio: true,
                  onSelected: (val, index, isSelected) =>
                      totalInformation.label = widget.labels[index],
                  buttons: widget.labels,
                  buttonBuilder: (selected, element, context) {
                    return GroupButtonItem(
                      isSelected: selected,
                      labelItem: element,
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
