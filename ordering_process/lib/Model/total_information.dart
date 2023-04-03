import 'package:flutter/cupertino.dart';
import 'package:ordering_process/Model/person.dart';

class TotalInformation with ChangeNotifier {
  late String label;
  late Person recipient = Person();
  late Person sender = Person();

  TotalInformation();
}
