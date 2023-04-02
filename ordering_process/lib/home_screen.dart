import 'package:flutter/material.dart';
import 'package:ordering_process/ShippingLabel/shipping_label.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed('/shipping_label'),
              child: Text('Versandlabel erstellen'),
            ),
          ],
        ),
      ),
    );
  }
}
