import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:juvenile/features/authentication/screens/onboarding/onboarding.dart';
import 'package:juvenile/utils/theme/theme.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: JAppTheme.lightTheme ,
      darkTheme: JAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}