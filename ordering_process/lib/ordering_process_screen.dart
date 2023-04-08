import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:ordering_process/Overview/overview_screen.dart';
import 'package:ordering_process/shipping_label/shipping_label_screen.dart';
import 'package:provider/provider.dart';

import 'contact_form/contact_form_screen.dart';
import 'generated/l10n.dart';

class OrderingProcessScreen extends StatefulWidget {
  final _formKeyE = GlobalKey<FormState>();
  final _formKeyA = GlobalKey<FormState>();
  OrderingProcessScreen({Key? key}) : super(key: key);

  @override
  State<OrderingProcessScreen> createState() => _OrderingProcessScreenState();
}

class _OrderingProcessScreenState extends State<OrderingProcessScreen> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stepper(
                  controlsBuilder: (context, details) {
                    return buildStepperControls();
                  },
                  physics: const ScrollPhysics(),
                  type: StepperType.horizontal,
                  currentStep: _currentStep,
                  onStepTapped: (step) => onStepTupped(step),
                  steps: getSteps(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildStepperControls() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Consumer<TotalInformation>(
        builder: (context, totalInformation, child) {
          return Row(
            mainAxisAlignment: _currentStep != 2
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: <Widget>[
              _currentStep != 2
                  ? ElevatedButton(
                      onPressed: () => cancel(),
                      child: const Text('cancel'),
                    )
                  : ElevatedButton(
                      onPressed: () => Fluttertoast.showToast(
                        msg: 'Label created',
                        backgroundColor: Colors.deepOrange,
                      ),
                      child: Text(
                        S.of(context).createLabelButtonTitle,
                      ),
                    ),
              _currentStep != 2
                  ? ElevatedButton(
                      onPressed: () => continued(totalInformation),
                      child: Text('Continue'),
                    )
                  : Container(),
            ],
          );
        },
      ),
    );
  }

  List<Step> getSteps() {
    return <Step>[
      Step(
        title: Text(
          'Label',
          style: TextStyle(
            color: _currentStep >= 0 ? Colors.black : Colors.blue,
          ),
        ),
        content: ShippingLabelScreen(),
        isActive: _currentStep >= 0,
        state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
      ),
      Step(
        title: const Text(
          'Contact',
          style: TextStyle(color: Colors.black),
        ),
        content: ContactFormScreen(
          formKeyE: widget._formKeyE,
          formKeyA: widget._formKeyA,
        ),
        isActive: _currentStep >= 0,
        state: _currentStep >= 1 ? StepState.disabled : StepState.disabled,
      ),
      Step(
        title: const Text(
          'Overview',
          style: TextStyle(color: Colors.black),
        ),
        content: OverviewScreen(),
        isActive: _currentStep >= 0,
        state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
      ),
    ];
  }

  void onStepTupped(int step) {
    setState(() {
      _currentStep = step;
    });
  }

  void continued(TotalInformation totalInformation) {
    _currentStep < 2
        ? setState(() {
            if (_currentStep == 0) {
              return checkForStepOne(totalInformation);
            }
            if (_currentStep == 1) {
              return checkForStepTwo();
            }
            _currentStep += 1;
          })
        : null;
  }

  void checkForStepTwo() {
    if (widget._formKeyE.currentState!.validate() &
        widget._formKeyA.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();
      _currentStep += 1;
      return;
    } else {
      Fluttertoast.showToast(
        msg: S.of(context).contactFormToastMessage,
        backgroundColor: Colors.deepOrange,
      );
      return;
    }
  }

  void checkForStepOne(TotalInformation totalInformation) {
    if (totalInformation.label.size.isNotEmpty) {
      _currentStep += 1;
      return;
    } else {
      Fluttertoast.showToast(
        msg: S.of(context).shippingLabelToastMessage,
        backgroundColor: Colors.deepOrange,
      );
      return;
    }
  }

  void cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
