import 'package:flutter/material.dart';
import 'package:ordering_process/Model/person.dart';

class PersonTotalDataView extends StatelessWidget {
  const PersonTotalDataView({
    Key? key,
    required this.person,
  }) : super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TotalDataItem(label: 'Vorname', value: person.firstName ?? ''),
          TotalDataItem(label: 'Nachname', value: person.lastName),
          TotalDataItem(label: 'Straße', value: person.street),
          TotalDataItem(label: 'Hausnummer', value: person.houseNumber),
          TotalDataItem(label: 'PLZ', value: person.postcode),
          TotalDataItem(label: 'Wohnort', value: person.city),
          TotalDataItem(label: 'Email', value: person.email ?? ''),
        ],
      ),
    );
  }
}

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
            Text('$label : '),
            Text(value),
          ],
        ),
        Divider(
          color: Colors.black54,
          thickness: 1,
        ),
      ],
    );
  }
}
