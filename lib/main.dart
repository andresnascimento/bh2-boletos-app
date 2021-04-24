import 'package:bh2_boletos/controller/monthly_transactions_notifier.dart';
import 'package:bh2_boletos/screens/dashboard/dashboard_screen.dart';
import 'package:bh2_boletos/screens/singup/singup_screen.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => MonthlyTransactionsNotifier())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        SingUpPage.id: (context) => SingUpPage(),
        DashboardPage.id: (context) => DashboardPage()
      },
    );
  }
}
