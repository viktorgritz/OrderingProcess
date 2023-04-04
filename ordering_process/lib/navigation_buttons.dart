import 'package:flutter/material.dart';

class NavigationButtons extends StatelessWidget {
  final Function backButton;
  final Function nextButton;
  const NavigationButtons({
    Key? key,
    required this.backButton,
    required this.nextButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              backButton();
            },
            child: Text('Zurück'),
          ),
          ElevatedButton(
            onPressed: () {
              nextButton();
            },
            child: Text('Weiter'),
          ),
        ],
      ),
    );
  }
}
