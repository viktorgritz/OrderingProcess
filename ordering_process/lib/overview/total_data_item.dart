import 'package:flutter/material.dart';

class TotalDataItem extends StatelessWidget {
  String label;
  String value;

  TotalDataItem({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Text(value),
          ],
        ),
        const Divider(
          color: Colors.black54,
          thickness: 1,
        ),
      ],
    );
  }
}
