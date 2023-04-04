import 'package:flutter/material.dart';
import 'package:ordering_process/Model/person.dart';
import 'package:ordering_process/generated/l10n.dart';

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
          TotalDataItem(
              label: S.of(context).firstnameOverviewTitle,
              value: person.firstName ?? ''),
          TotalDataItem(
              label: S.of(context).lastnameOverviewTitle,
              value: person.lastName),
          TotalDataItem(
              label: S.of(context).streetOverviewTitle, value: person.street),
          TotalDataItem(
              label: S.of(context).numberOverviewTitle,
              value: person.houseNumber),
          TotalDataItem(
              label: S.of(context).postcodeOverviewTitle,
              value: person.postcode),
          TotalDataItem(
              label: S.of(context).cityOverviewTitle, value: person.city),
          TotalDataItem(
              label: S.of(context).emailOverviewTitle,
              value: person.email ?? ''),
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
            Text('$label'),
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
