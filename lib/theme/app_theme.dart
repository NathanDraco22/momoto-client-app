import 'package:flutter/material.dart';

const primaryColor = Color(0xff0077B6);
const softPrimaryColor = Color.fromARGB(255, 164, 223, 255);
const lightPrimaryColor = Color.fromARGB(255, 203, 237, 255);
const cornColorColor = Color(0xffF4D35E);
const cornSoftColor = Color.fromARGB(255, 251, 233, 169);
const softSandColor = Color(0xffF9F7F0);
const sandColor = Color.fromARGB(255, 255, 244, 206);
const natureGreen = Color(0xff4CAF50);
const traditionalRed = Color(0xffD72638);

final value = ["9ac5e5", "4fb19d", "edce7a", "c98c9a", "e5c6c3"];

class AppTheme {
  ThemeData getLightTheme() => ThemeData.light().copyWith(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 241, 243, 244),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightPrimaryColor,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: primaryColor,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
    ),
    colorScheme: ColorScheme.light().copyWith(
      primary: primaryColor,
      secondaryContainer: cornColorColor,
    ),
  );
}
