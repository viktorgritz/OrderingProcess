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
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 48, vertical: 18),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Label : '),
                          Text(totalInformation.label.title),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Größe : '),
                          Text(totalInformation.label.size),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Gewicht : '),
                          Text(totalInformation.label.weight),
                        ],
                      ),
                      Text(
                        'Preis : ${totalInformation.label.preis} €',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text('Empfänger'),
              ),
              Expanded(
                child: PersonTotalDataView(person: totalInformation.recipient),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text('Absender'),
              ),
              Expanded(
                child: PersonTotalDataView(person: totalInformation.sender),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
