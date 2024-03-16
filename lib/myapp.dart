import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tshil_project/features/authentication/screens/login/login.dart';
import 'package:tshil_project/utils/theme/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'localization/languages.dart';




/// -- Use This Class To Setup Themes , initialize Binding , any Animations and much more ---------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      localizationsDelegates: const [
        AppLocale.delegete,
        GlobalWidgetsLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale("en"),Locale("ar")],
      locale:const Locale("ar"),
      home: const LoginScreen(),
    );
  }
}
