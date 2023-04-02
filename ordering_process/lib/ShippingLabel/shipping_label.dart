import 'package:flutter/material.dart';

class ShippingLabel extends StatefulWidget {
  const ShippingLabel({super.key});

  @override
  State<ShippingLabel> createState() => _ShippingLabelState();
}

class _ShippingLabelState extends State<ShippingLabel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paket Größe auswählen'),
      ),
    );
  }
}
