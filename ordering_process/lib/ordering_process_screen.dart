import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:ordering_process/Overview/overview_screen.dart';
import 'package:ordering_process/model/stepper_provider.dart';
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
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StepperProvider>(
      create: (context) => StepperProvider(),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.grey[200],
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Consumer<StepperProvider>(
                    builder: (context, stepperProvider, child) {
                      return Stepper(
                        controlsBuilder: (context, details) {
                          return buildStepperControls(stepperProvider);
                        },
                        physics: const ScrollPhysics(),
                        type: StepperType.horizontal,
                        currentStep: stepperProvider.currentStep,
                        onStepTapped: (step) =>
                            onStepTupped(stepperProvider, step),
                        steps: getSteps(stepperProvider),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildStepperControls(StepperProvider stepperProvider) {
    final currentStep = stepperProvider.currentStep;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Consumer<TotalInformation>(
        builder: (context, totalInformation, child) {
          return Row(
            mainAxisAlignment: currentStep != 2
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: <Widget>[
              currentStep != 2
                  ? ElevatedButton(
                      onPressed: () =>
                          cancel(stepperProvider, totalInformation, context),
                      child: const Text('Cancel'),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Label created',
                          backgroundColor: Colors.deepOrange,
                        );
                        _resetData(stepperProvider, totalInformation);
                      },
                      child: Text(
                        S.of(context).createLabelButtonTitle,
                      ),
                    ),
              currentStep != 2
                  ? ElevatedButton(
                      onPressed: () =>
                          continued(stepperProvider, totalInformation),
                      child: const Text('Continue'),
                    )
                  : Container(),
            ],
          );
        },
      ),
    );
  }

  List<Step> getSteps(StepperProvider stepperProvider) {
    final currentStep = stepperProvider.currentStep;
    return <Step>[
      Step(
        title: Text(
          'Label',
          style: TextStyle(
            color: currentStep >= 0 ? Colors.black : Colors.blue,
          ),
        ),
        content: ShippingLabelScreen(),
        isActive: currentStep >= 0,
        state: currentStep >= 0 ? StepState.complete : StepState.disabled,
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
        isActive: currentStep >= 1,
        state: currentStep >= 1 ? StepState.complete : StepState.disabled,
      ),
      Step(
        title: const Text(
          'Overview',
          style: TextStyle(color: Colors.black),
        ),
        content: OverviewScreen(),
        isActive: currentStep >= 2,
        state: currentStep >= 2 ? StepState.complete : StepState.disabled,
      ),
    ];
  }

  void onStepTupped(
    StepperProvider stepperProvider,
    int step,
  ) {
    stepperProvider.setCurrentStep(step);
  }

  void continued(
    StepperProvider stepperProvider,
    TotalInformation totalInformation,
  ) {
    if (stepperProvider.currentStep < 2) {
      if (stepperProvider.currentStep == 0) {
        return checkForStepOne(totalInformation, stepperProvider);
      }
      if (stepperProvider.currentStep == 1) {
        return checkForStepTwo(stepperProvider);
      }
      stepperProvider.nextStep();
    }
  }

  void checkForStepTwo(StepperProvider stepperProvider) {
    if (widget._formKeyE.currentState!.validate() &
        widget._formKeyA.currentState!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();
      stepperProvider.nextStep();
      return;
    } else {
      Fluttertoast.showToast(
        msg: S.of(context).contactFormToastMessage,
        backgroundColor: Colors.deepOrange,
      );
      return;
    }
  }

  void checkForStepOne(
    TotalInformation totalInformation,
    StepperProvider stepperProvider,
  ) {
    if (totalInformation.label.size.isNotEmpty) {
      stepperProvider.nextStep();
      return;
    } else {
      Fluttertoast.showToast(
        msg: S.of(context).shippingLabelToastMessage,
        backgroundColor: Colors.deepOrange,
      );
      return;
    }
  }

  void cancel(
    StepperProvider stepperProvider,
    TotalInformation totalInformation,
    BuildContext context,
  ) {
    if (stepperProvider.currentStep >= 0) {
      if (stepperProvider.currentStep == 0) {
        _resetData(stepperProvider, totalInformation);
      } else {
        stepperProvider.previousStep();
      }
    }
  }

  void _resetData(
      StepperProvider stepperProvider, TotalInformation totalInformation) {
    stepperProvider.setCurrentStep(0);
    totalInformation.clearTotalInformation();
    Navigator.of(context).pop();
  }
}
