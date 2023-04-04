import 'package:flutter/material.dart';
import 'package:ordering_process/Model/label.dart';
import 'package:ordering_process/generated/l10n.dart';

class GroupButtonItem extends StatelessWidget {
  final bool isSelected;
  final double width;
  final Label labelItem;
  const GroupButtonItem({
    required this.isSelected,
    required this.width,
    required this.labelItem,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
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
      padding: const EdgeInsets.all(18),
      width: width,
      height: width,
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
            Text(S.of(context).priceTitle(labelItem.preis)),
          ],
        ),
      ),
    );
  }
}
