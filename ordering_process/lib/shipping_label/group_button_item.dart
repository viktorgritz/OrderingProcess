import 'package:flutter/material.dart';
import 'package:ordering_process/Model/label.dart';
import 'package:ordering_process/constants/app_constants.dart';
import 'package:ordering_process/generated/l10n.dart';

class GroupButtonItem extends StatelessWidget {
  final bool isSelected;
  final Label labelItem;
  const GroupButtonItem({
    required this.isSelected,
    required this.labelItem,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width / 2.5;
    return Container(
      margin: DefaultInsets.marginAll2,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset.fromDirection(4, 3),
            spreadRadius: 1,
            blurRadius: 5,
          )
        ],
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadiusDirectional.circular(10),
        color: isSelected ? Colors.lightBlue[100] : Colors.white,
      ),
      padding: DefaultInsets.paddingAll18,
      width: screenWidth,
      height: screenWidth,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Text(
              labelItem.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            )),
            const SizedBox(
              height: 10,
            ),
            Text(S.of(context).sizeTitle(labelItem.size)),
            Text(S.of(context).weightTitle(labelItem.weight)),
            FittedBox(child: Text(S.of(context).priceTitle(labelItem.preis))),
          ],
        ),
      ),
    );
  }
}
