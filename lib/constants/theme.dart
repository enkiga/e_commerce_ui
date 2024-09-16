import 'package:e_commerce_ui/constants/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    scaffoldBackgroundColor: kBackgroundColor,
    fontFamily: 'Mulish',
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kPrimaryTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyLarge: TextStyle(color: kPrimaryTextColor),
    bodySmall: TextStyle(color: kSecondaryTextColor),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: kBackgroundColor,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
    toolbarTextStyle: TextStyle(color: Colors.black, fontSize: 18),
  );
}
