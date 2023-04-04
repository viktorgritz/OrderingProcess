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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed('/shipping_label'),
                child: const Text('Versandlabel erstellen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
