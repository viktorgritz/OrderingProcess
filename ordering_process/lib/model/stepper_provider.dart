import 'package:flutter/cupertino.dart';

class StepperProvider with ChangeNotifier {
  int _currentStep = 0;

  int get currentStep => _currentStep;

  void setCurrentStep(int value) {
    _currentStep = value;
    notifyListeners();
  }

  void nextStep() {
    _currentStep += 1;
    notifyListeners();
  }

  void previousStep() {
    _currentStep -= 1;
    notifyListeners();
  }
}
