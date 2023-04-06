import 'package:flutter/material.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:ordering_process/Overview/person_total_data_view.dart';
import 'package:ordering_process/constants/app_constants.dart';
import 'package:ordering_process/generated/l10n.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalInformation =
        ModalRoute.of(context)!.settings.arguments as TotalInformation;
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).overviewAppbarTitle),
      ),
      body: Padding(
        padding: DefaultInsets.paddingAll8,
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
                      horizontal: 38,
                      vertical: 18,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textRow(S.of(context).labelOverviewTitle,
                            totalInformation.label.title),
                        textRow(S.of(context).sizeOverviewTitle,
                            totalInformation.label.size),
                        textRow(S.of(context).weightOverviewTitle,
                            '${totalInformation.label.weight} ${S.of(context).weightValueOverviewTitle}'),
                        Text(
                          '${S.of(context).priceOverviewTitle} ${totalInformation.label.preis}${S.of(context).priceValueOverviewTitle}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: DefaultInsets.paddingAll18,
                  child: Text(S.of(context).recipientTitle),
                ),
                PersonTotalDataView(person: totalInformation.recipient),
                Padding(
                  padding: DefaultInsets.paddingAll18,
                  child: Text(S.of(context).senderTitle),
                ),
                PersonTotalDataView(person: totalInformation.sender),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(S.of(context).createLabelButtonTitle),
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
