import 'package:flutter/material.dart';
import 'package:modernoaqui/themes/customColors.dart';

ThemeData buildTheme() {
  return ThemeData(
      primaryColor: const Color.fromARGB(255, 10, 8, 156),
      appBarTheme: AppBarTheme(
        backgroundColor: CustomColors.primary,
        centerTitle: true,
        foregroundColor: CustomColors.text,
        titleTextStyle: TextStyle(
          color: CustomColors.text,
          fontSize: 24,
        ),
      ),
      fontFamily: 'Roboto',
      textTheme: const TextTheme(
        labelSmall: TextStyle(
          color: CustomColors.textDark,
          fontSize: 12,
        ),
        titleMedium: TextStyle(
          color: CustomColors.textDark,
          fontSize: 18,
        ),
        bodyLarge: TextStyle(
          color: CustomColors.textDark,
          fontSize: 20,
        ),
        bodyMedium: TextStyle(
          color: CustomColors.textDark,
          fontSize: 20,
        ),
        bodySmall: TextStyle(
          color: CustomColors.textDark,
          fontSize: 24,
        ),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: CustomColors.primary,
        textTheme: ButtonTextTheme.normal,
      ));
}
