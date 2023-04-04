import 'package:flutter/cupertino.dart';
import 'package:ordering_process/Model/person.dart';

import 'label.dart';

class TotalInformation with ChangeNotifier {
  late Label label = Label.empty();
  late Person recipient = Person();
  late Person sender = Person();

  TotalInformation();
}
