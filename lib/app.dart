import 'package:eco_store/features/authentication/screens/login/login.dart';
import 'package:eco_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:eco_store/util/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,

      /// First page after splash screen as native
      home: const OnBoardingScreen(),
    );
  }
}
