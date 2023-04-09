import 'package:flutter/material.dart';
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28.0,
                    vertical: 12,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 38,
                          vertical: 36,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
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
                      Container(
                        width: 120,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          border: Border.all(),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                S.of(context).labelOverviewTitle,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                totalInformation.label.title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
              ],
            );
          }),
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
