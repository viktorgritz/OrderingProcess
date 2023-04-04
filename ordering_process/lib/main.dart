import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ordering_process/Model/total_information.dart';
import 'package:ordering_process/home_screen.dart';
import 'package:ordering_process/shipping_label/shipping_label_screen.dart';
import 'package:provider/provider.dart';

import 'Overview/overview_screen.dart';
import 'contact_form/contact_form_screen.dart';
import 'generated/l10n.dart';
import 'theme/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TotalInformation>(
      create: (context) => TotalInformation(),
      child: MaterialApp(
        title: 'Ordering Process',
        theme: AppThemes.lightTheme,
        home: const HomeScreen(),
        routes: {
          '/shipping_label': (context) => ShippingLabelScreen(),
          '/contact_form': (context) => ContactFormScreen(),
          '/overview_screen': (context) => const OverviewScreen(),
        },
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
