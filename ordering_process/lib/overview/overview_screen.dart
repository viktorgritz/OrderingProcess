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
      appBar: AppBar(
        title: Text('Übersicht'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 28.0, vertical: 12),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 48, vertical: 18),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textRow('Label : ', totalInformation.label.title),
                        textRow('Größe : ', totalInformation.label.size),
                        textRow('Gewicht : ',
                            '${totalInformation.label.weight} kg'),
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
                PersonTotalDataView(person: totalInformation.recipient),
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text('Absender'),
                ),
                PersonTotalDataView(person: totalInformation.sender),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Paketschein erstellen'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value),
      ],
    );
  }
}
