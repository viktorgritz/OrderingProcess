// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Flutter Dev Challenge`
  String get homeScreenAppBarTitle {
    return Intl.message(
      'Flutter Dev Challenge',
      name: 'homeScreenAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create label`
  String get createLabelButtonTitle {
    return Intl.message(
      'Create label',
      name: 'createLabelButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select package size`
  String get shippingLabelScreenAppBarTitle {
    return Intl.message(
      'Select package size',
      name: 'shippingLabelScreenAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please select a label`
  String get shippingLabelToastMessage {
    return Intl.message(
      'Please select a label',
      name: 'shippingLabelToastMessage',
      desc: '',
      args: [],
    );
  }

  /// `Size: {size}`
  String sizeTitle(Object size) {
    return Intl.message(
      'Size: $size',
      name: 'sizeTitle',
      desc: '',
      args: [size],
    );
  }

  /// `Weight: {weight} kg`
  String weightTitle(Object weight) {
    return Intl.message(
      'Weight: $weight kg',
      name: 'weightTitle',
      desc: '',
      args: [weight],
    );
  }

  /// `Price: {price} Euro`
  String priceTitle(Object price) {
    return Intl.message(
      'Price: $price Euro',
      name: 'priceTitle',
      desc: '',
      args: [price],
    );
  }

  /// `Back`
  String get backButtonTitle {
    return Intl.message(
      'Back',
      name: 'backButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get nextButtonTitle {
    return Intl.message(
      'Next',
      name: 'nextButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Contact form`
  String get contactFormAppBarTitle {
    return Intl.message(
      'Contact form',
      name: 'contactFormAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Recipient`
  String get recipientTitle {
    return Intl.message(
      'Recipient',
      name: 'recipientTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sender`
  String get senderTitle {
    return Intl.message(
      'Sender',
      name: 'senderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please try again`
  String get contactFormToastMessage {
    return Intl.message(
      'Please try again',
      name: 'contactFormToastMessage',
      desc: '',
      args: [],
    );
  }

  /// `Firstname (Optional)`
  String get firstnameTitle {
    return Intl.message(
      'Firstname (Optional)',
      name: 'firstnameTitle',
      desc: '',
      args: [],
    );
  }

  /// `Lastname*`
  String get lastnameTitle {
    return Intl.message(
      'Lastname*',
      name: 'lastnameTitle',
      desc: '',
      args: [],
    );
  }

  /// `Street*`
  String get streetTitle {
    return Intl.message(
      'Street*',
      name: 'streetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Nr.*`
  String get numberTitle {
    return Intl.message(
      'Nr.*',
      name: 'numberTitle',
      desc: '',
      args: [],
    );
  }

  /// `Postcode*`
  String get postcodeTitle {
    return Intl.message(
      'Postcode*',
      name: 'postcodeTitle',
      desc: '',
      args: [],
    );
  }

  /// `City*`
  String get cityTitle {
    return Intl.message(
      'City*',
      name: 'cityTitle',
      desc: '',
      args: [],
    );
  }

  /// `E-Mail (Optional)`
  String get emailTitle {
    return Intl.message(
      'E-Mail (Optional)',
      name: 'emailTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid first name`
  String get firstnameErrorMessage {
    return Intl.message(
      'Please enter a valid first name',
      name: 'firstnameErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid last name`
  String get lastnameErrorMessage {
    return Intl.message(
      'Please enter a valid last name',
      name: 'lastnameErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid street`
  String get streetErrorMessage {
    return Intl.message(
      'Please enter a valid street',
      name: 'streetErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid house number`
  String get numberErrorMessage {
    return Intl.message(
      'Please enter a valid house number',
      name: 'numberErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid zip code`
  String get postcodeErrorMessage {
    return Intl.message(
      'Please enter a valid zip code',
      name: 'postcodeErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid place of residence`
  String get cityErrorMessage {
    return Intl.message(
      'Please enter a valid place of residence',
      name: 'cityErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get emailErrorMessage {
    return Intl.message(
      'Please enter a valid email',
      name: 'emailErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Firstname: `
  String get firstnameOverviewTitle {
    return Intl.message(
      'Firstname: ',
      name: 'firstnameOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Lastname: `
  String get lastnameOverviewTitle {
    return Intl.message(
      'Lastname: ',
      name: 'lastnameOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Street: `
  String get streetOverviewTitle {
    return Intl.message(
      'Street: ',
      name: 'streetOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `House number: `
  String get numberOverviewTitle {
    return Intl.message(
      'House number: ',
      name: 'numberOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Postcode: `
  String get postcodeOverviewTitle {
    return Intl.message(
      'Postcode: ',
      name: 'postcodeOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `City: `
  String get cityOverviewTitle {
    return Intl.message(
      'City: ',
      name: 'cityOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `E-Mail: `
  String get emailOverviewTitle {
    return Intl.message(
      'E-Mail: ',
      name: 'emailOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overviewAppbarTitle {
    return Intl.message(
      'Overview',
      name: 'overviewAppbarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Label: `
  String get labelOverviewTitle {
    return Intl.message(
      'Label: ',
      name: 'labelOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Size: `
  String get sizeOverviewTitle {
    return Intl.message(
      'Size: ',
      name: 'sizeOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Weight: `
  String get weightOverviewTitle {
    return Intl.message(
      'Weight: ',
      name: 'weightOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// ` kg`
  String get weightValueOverviewTitle {
    return Intl.message(
      ' kg',
      name: 'weightValueOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Price: `
  String get priceOverviewTitle {
    return Intl.message(
      'Price: ',
      name: 'priceOverviewTitle',
      desc: '',
      args: [],
    );
  }

  /// ` €`
  String get priceValueOverviewTitle {
    return Intl.message(
      ' €',
      name: 'priceValueOverviewTitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
