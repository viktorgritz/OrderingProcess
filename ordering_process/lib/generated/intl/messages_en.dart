// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(price) => "Price: ${price} Euro";

  static String m1(size) => "Size: ${size}";

  static String m2(weight) => "Weight: ${weight} kg";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "backButtonTitle": MessageLookupByLibrary.simpleMessage("Back"),
        "cityErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid place of residence"),
        "cityOverviewTitle": MessageLookupByLibrary.simpleMessage("City: "),
        "cityTitle": MessageLookupByLibrary.simpleMessage("City*"),
        "contactFormAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Contact form"),
        "contactFormToastMessage":
            MessageLookupByLibrary.simpleMessage("Please try again"),
        "createLabelButtonTitle":
            MessageLookupByLibrary.simpleMessage("Create label"),
        "createdLabelTitle":
            MessageLookupByLibrary.simpleMessage("Label created"),
        "emailErrorMessage":
            MessageLookupByLibrary.simpleMessage("Please enter a valid email"),
        "emailOverviewTitle": MessageLookupByLibrary.simpleMessage("E-Mail: "),
        "emailTitle": MessageLookupByLibrary.simpleMessage("E-Mail (Optional)"),
        "firstnameErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid first name"),
        "firstnameOverviewTitle":
            MessageLookupByLibrary.simpleMessage("Firstname: "),
        "firstnameTitle":
            MessageLookupByLibrary.simpleMessage("Firstname (Optional)"),
        "homeScreenAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Flutter Dev Challenge"),
        "labelOverviewTitle": MessageLookupByLibrary.simpleMessage("Label: "),
        "lastnameErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid last name"),
        "lastnameOverviewTitle":
            MessageLookupByLibrary.simpleMessage("Lastname: "),
        "lastnameTitle": MessageLookupByLibrary.simpleMessage("Lastname*"),
        "nextButtonTitle": MessageLookupByLibrary.simpleMessage("Next"),
        "numberErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid house number"),
        "numberOverviewTitle":
            MessageLookupByLibrary.simpleMessage("House number: "),
        "numberTitle": MessageLookupByLibrary.simpleMessage("Nr.*"),
        "overviewAppbarTitle": MessageLookupByLibrary.simpleMessage("Overview"),
        "postcodeErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid zip code"),
        "postcodeOverviewTitle":
            MessageLookupByLibrary.simpleMessage("Postcode: "),
        "postcodeTitle": MessageLookupByLibrary.simpleMessage("Postcode*"),
        "priceOverviewTitle": MessageLookupByLibrary.simpleMessage("Price: "),
        "priceTitle": m0,
        "priceValueOverviewTitle": MessageLookupByLibrary.simpleMessage(" €"),
        "recipientTitle": MessageLookupByLibrary.simpleMessage("Recipient"),
        "senderTitle": MessageLookupByLibrary.simpleMessage("Sender"),
        "shippingLabelScreenAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Select package size"),
        "shippingLabelToastMessage":
            MessageLookupByLibrary.simpleMessage("Please select a label"),
        "sizeOverviewTitle": MessageLookupByLibrary.simpleMessage("Size: "),
        "sizeTitle": m1,
        "stepContact": MessageLookupByLibrary.simpleMessage("Contact"),
        "stepLabel": MessageLookupByLibrary.simpleMessage("Label"),
        "stepOverview": MessageLookupByLibrary.simpleMessage("Overview"),
        "streetErrorMessage":
            MessageLookupByLibrary.simpleMessage("Please enter a valid street"),
        "streetOverviewTitle": MessageLookupByLibrary.simpleMessage("Street: "),
        "streetTitle": MessageLookupByLibrary.simpleMessage("Street*"),
        "weightOverviewTitle": MessageLookupByLibrary.simpleMessage("Weight: "),
        "weightTitle": m2,
        "weightValueOverviewTitle": MessageLookupByLibrary.simpleMessage(" kg")
      };
}
