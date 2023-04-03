import 'package:flutter/material.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:ordering_process/Overview/person_total_data_view.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalInformation =
        ModalRoute.of(context)!.settings.arguments as TotalInformation;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text('Shipping Label : ${totalInformation.label}'),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text('Empfänger'),
              ),
              PersonTotalDataView(person: totalInformation.recipient),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text('Absender'),
              ),
              PersonTotalDataView(person: totalInformation.sender),
            ],
          ),
        ),
      ),
    );
  }
}
