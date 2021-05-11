import 'package:bh2_boletos/controller/monthly_transactions_notifier.dart';
import 'package:bh2_boletos/models/expenses.dart';
import 'package:bh2_boletos/screens/dashboard/dashboard_screen.dart';
import 'package:bh2_boletos/screens/signup/signup_screen.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Expenses(),
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.muliTextTheme(Theme.of(context).textTheme),
          primaryColor: kColorBlack,
          hintColor: kColorGray300,
        ),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [const Locale('pt', 'BR')],
        initialRoute: OnboardingScreen.id,
        routes: {
          OnboardingScreen.id: (context) => OnboardingScreen(),
          SignUpPage.id: (context) => SignUpPage(),
          DashboardPage.id: (context) => DashboardPage()
        },
      ),
    );
  }
}
