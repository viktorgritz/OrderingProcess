import 'package:flutter/material.dart';

class CustomRadioListTile extends StatefulWidget {
  final String title;
  final String value;
  final String? groupValue;
  final Function(String?) callback;
  const CustomRadioListTile({
    Key? key,
    required this.value,
    required this.callback,
    required this.title,
    required this.groupValue,
  }) : super(key: key);

  @override
  State<CustomRadioListTile> createState() => _CustomRadioListTileState();
}

class _CustomRadioListTileState extends State<CustomRadioListTile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RadioListTile(
        selected: false,
        title: Text(widget.title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Größe: 10x10x10'),
            Text('Gewicht: 3Kg'),
            Text('Preis: 7 Euro'),
          ],
        ),
        value: widget.value,
        onChanged: (value) {
          widget.callback(value);
        },
        groupValue: widget.groupValue,
      ),
    );
  }
}
