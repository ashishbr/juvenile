import 'package:flutter/material.dart';
import 'package:juvenile/utils/theme/theme.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: JAppTheme.lightTheme ,
      darkTheme: JAppTheme.darkTheme,
    );
  }
}