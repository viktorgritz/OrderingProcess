// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(price) => "Preis: ${price} Euro";

  static String m1(size) => "Größe: ${size}";

  static String m2(weight) => "Gewicht: ${weight} kg";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "backButtonTitle": MessageLookupByLibrary.simpleMessage("Zurück"),
        "cityErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie einen gültigen Wohnort ein"),
        "cityOverviewTitle": MessageLookupByLibrary.simpleMessage("Wohnort: "),
        "cityTitle": MessageLookupByLibrary.simpleMessage("Wohnort*"),
        "contactFormAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Kontaktformular"),
        "contactFormToastMessage": MessageLookupByLibrary.simpleMessage(
            "Bitte versuchen Sie es nochmal"),
        "createLabelButtonTitle":
            MessageLookupByLibrary.simpleMessage("Paketschein erstellen"),
        "emailErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie einen gültigen E-Mail ein"),
        "emailOverviewTitle": MessageLookupByLibrary.simpleMessage("E-Mail: "),
        "emailTitle": MessageLookupByLibrary.simpleMessage("E-Mail (Optional)"),
        "firstnameErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie einen gültigen Vornamen ein"),
        "firstnameOverviewTitle":
            MessageLookupByLibrary.simpleMessage("Vorname: "),
        "firstnameTitle":
            MessageLookupByLibrary.simpleMessage("Vorname (Optional)"),
        "homeScreenAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Flutter Dev Challenge"),
        "labelOverviewTitle": MessageLookupByLibrary.simpleMessage("Label:"),
        "lastnameErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie einen gültigen Nachnamen ein"),
        "lastnameOverviewTitle":
            MessageLookupByLibrary.simpleMessage("Nachname: "),
        "lastnameTitle": MessageLookupByLibrary.simpleMessage("Nachname*"),
        "nextButtonTitle": MessageLookupByLibrary.simpleMessage("Weiter"),
        "numberErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie einer gültigen Hausnummer ein"),
        "numberOverviewTitle":
            MessageLookupByLibrary.simpleMessage("Hausnummer: "),
        "numberTitle": MessageLookupByLibrary.simpleMessage("Nr.*"),
        "overviewAppbarTitle":
            MessageLookupByLibrary.simpleMessage("Übersicht"),
        "postcodeErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie einen gültigen PLZ ein"),
        "postcodeOverviewTitle": MessageLookupByLibrary.simpleMessage("PLZ: "),
        "postcodeTitle": MessageLookupByLibrary.simpleMessage("PLZ*"),
        "priceOverviewTitle": MessageLookupByLibrary.simpleMessage("Preis: "),
        "priceTitle": m0,
        "priceValueOverviewTitle": MessageLookupByLibrary.simpleMessage(" €"),
        "recipientTitle": MessageLookupByLibrary.simpleMessage("Empfänger"),
        "senderTitle": MessageLookupByLibrary.simpleMessage("Absender"),
        "shippingLabelScreenAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Paket Größe auswählen"),
        "shippingLabelToastMessage": MessageLookupByLibrary.simpleMessage(
            "Bitte wählen Sie ein Label aus"),
        "sizeOverviewTitle": MessageLookupByLibrary.simpleMessage("Größe: "),
        "sizeTitle": m1,
        "streetErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie einer gültigen Straße ein"),
        "streetOverviewTitle": MessageLookupByLibrary.simpleMessage("Straße: "),
        "streetTitle": MessageLookupByLibrary.simpleMessage("Straße*"),
        "weightOverviewTitle":
            MessageLookupByLibrary.simpleMessage("Gewicht: "),
        "weightTitle": m2,
        "weightValueOverviewTitle": MessageLookupByLibrary.simpleMessage(" kg")
      };
}
