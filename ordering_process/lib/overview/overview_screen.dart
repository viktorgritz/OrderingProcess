import 'package:flutter/material.dart';
import 'package:ordering_process/Model/person.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:ordering_process/Overview/person_total_data_view.dart';
import 'package:ordering_process/constants/app_constants.dart';
import 'package:ordering_process/generated/l10n.dart';
import 'package:provider/provider.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DefaultInsets.paddingAll8,
      child: Center(
        child: SingleChildScrollView(
          child: Consumer<TotalInformation>(
              builder: (context, totalInformation, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildLabelWithDetails(context, totalInformation),
                buildTitleWithPersonTotalDataView(
                    S.of(context).recipientTitle, totalInformation.recipient),
                buildTitleWithPersonTotalDataView(
                    S.of(context).senderTitle, totalInformation.sender)
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget buildLabelWithDetails(
    BuildContext context,
    TotalInformation totalInformation,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset.fromDirection(4, 3),
                  spreadRadius: 1,
                  blurRadius: 5,
                )
              ],
              color: Colors.white,
              border: Border.all(color: Colors.black54),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 38,
                    right: 38,
                    top: 36,
                  ),
                  child: Column(
                    children: <Widget>[
                      textRow(S.of(context).sizeOverviewTitle,
                          totalInformation.label.size),
                      textRow(S.of(context).weightOverviewTitle,
                          '${totalInformation.label.weight} ${S.of(context).weightValueOverviewTitle}'),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          '${S.of(context).priceOverviewTitle} ${totalInformation.label.preis}${S.of(context).priceValueOverviewTitle}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black26,
                  thickness: 1,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                    bottom: 12,
                  ),
                  child: FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          S.of(context).shipmentId,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          totalInformation.id,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 140,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              border: Border.all(),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).labelOverviewTitle,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    totalInformation.label.title,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
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

  Widget buildTitleWithPersonTotalDataView(String title, Person personData) {
    return Column(
      children: <Widget>[
        Padding(
          padding: DefaultInsets.paddingAll8,
          child: Text(title),
        ),
        PersonTotalDataView(person: personData),
      ],
    );
  }
}
