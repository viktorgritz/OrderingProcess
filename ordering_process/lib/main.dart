import 'package:flutter/material.dart';
import 'package:ordering_process/ContactForm/contact_form.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:ordering_process/ShippingLabel/shipping_label.dart';
import 'package:ordering_process/home_screen.dart';
import 'package:provider/provider.dart';

import 'Overview/overview_screen.dart';
import 'model/person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TotalInformation>(
      create: (context) => TotalInformation(),
      child: MaterialApp(
        title: 'Ordering Process',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: const HomeScreen(title: 'Flutter Dev Challenge'),
        routes: {
          '/shipping_label': (context) => ShippingLabel(),
          '/contact_form': (context) => ContactForm(),
          '/overview_screen': (context) => const OverviewScreen(),
        },
      ),
    );
  }
}
