import 'package:flutter/material.dart';

import 'package:juvenile/utils/theme/appbar_theme.dart';
import 'package:juvenile/utils/theme/bottom_sheet_theme.dart';
import 'package:juvenile/utils/theme/chip_theme.dart';
import 'package:juvenile/utils/theme/elevated_button_theme.dart';
import 'package:juvenile/utils/theme/outlined_button_theme.dart';
import 'package:juvenile/utils/theme/text_field_theme.dart';
import 'package:juvenile/utils/theme/text_theme.dart';

class JAppTheme {
  JAppTheme._();
  /// constructor is private " TConstructor._(); "-> is the syntax to make a constructor private,
  /// so that its not used anywhere else
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.white,
    textTheme: JTextTheme.lightTextTheme,
    elevatedButtonTheme: JElevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: JChipTheme.lightChipTheme,
    appBarTheme: JAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: JBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: JOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: JTextFormFieldTheme.lightInputDecorationTheme,

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: JTextTheme.darkTextTheme,
    elevatedButtonTheme: JElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: JChipTheme.darkChipTheme,
    appBarTheme: JAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: JBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: JOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: JTextFormFieldTheme.darkInputDecorationTheme,

  );
}