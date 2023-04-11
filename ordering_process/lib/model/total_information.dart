import 'package:flutter/cupertino.dart';
import 'package:ordering_process/Model/person.dart';
import 'package:uuid/uuid.dart';

import 'label.dart';

class TotalInformation with ChangeNotifier {
  late String id = '';
  late Label label = Label.empty();
  late Person recipient = Person();
  late Person sender = Person();

  TotalInformation();

  void clearTotalInformation() {
    id = '';
    label = Label.empty();
    recipient = Person();
    sender = Person();
    notifyListeners();
  }

  void createShipmentId() {
    id = const Uuid().v1();
    notifyListeners();
  }
}
