import 'package:flutter/material.dart';

/*  This classes are  related configuration and global UI helper */

class BRColors {
  // background -bg and transition-tr

  static const bglightBlue = Color(0xFFEDF5FD);
  static const bgLightGray = Color(0xffE0E0E0);

  static const trGray = Color(0xff999999);

  static const white = Color(0xffffffff);
  static const bgDarkBlue = Color(0xff1B355E);

  // fonts -fn
  static const fnligtBlack = Color(0xff2A2A2A);

  // button-bt

  static const btGreen = Color(0xff239D48);
  static const btDarkBlue = Color(0xff1C365D);
  static const btRed = Color(0xFFED0000);

  static const winner = Color(0xffebc22e);
// text -tx

// static const txDarkBlue = Color(0xff1C365D);
}

class Constants {
  // static const BR_FAQ_URL = "https://bitright.com/faq";
  // base theme
  static ThemeData get theme => ThemeData(
      fontFamily: 'Source Sans Pro',
      // colors
      brightness: Brightness.light,
      primaryColor: BRColors.btGreen,
      cardColor: BRColors.white,
      disabledColor: BRColors.bgLightGray,
      colorScheme: const ColorScheme.light(
        primary: BRColors.bgDarkBlue,
        background: BRColors.bglightBlue,
        secondary: BRColors.btGreen,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: BRColors.bgDarkBlue,
        foregroundColor: Colors.white,
      ),
      // button color
      buttonTheme: ButtonThemeData(
          buttonColor: BRColors.btGreen,
          textTheme: ButtonTextTheme.normal,
          disabledColor: BRColors.trGray,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: BRColors.white,
              backgroundColor: BRColors.btGreen,
              minimumSize: const Size(88, 36),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)))),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            foregroundColor: BRColors.btDarkBlue,
            backgroundColor: Colors.transparent,
            textStyle: const TextStyle(fontSize: 14),
            side: const BorderSide(color: BRColors.btDarkBlue, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            )),
      ),
      // text themes
      textTheme: const TextTheme(
        displaySmall: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w600,
            color: BRColors.fnligtBlack),
        headlineMedium: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w600,
            color: BRColors.fnligtBlack),
        headlineSmall: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: BRColors.fnligtBlack),
        titleLarge: TextStyle(
            fontSize: 22,
            color: BRColors.fnligtBlack),
        titleMedium: TextStyle(fontSize: 18, color: Color(0xff718186)),
        titleSmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: BRColors.fnligtBlack),
        bodyLarge: TextStyle(fontSize: 16, color: BRColors.fnligtBlack),
        bodyMedium: TextStyle(fontSize: 14, color: BRColors.btDarkBlue),
      ),
      // input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: BRColors.bglightBlue,
        labelStyle: const TextStyle(color: BRColors.fnligtBlack),
        alignLabelWithHint: true,
        contentPadding: const EdgeInsets.fromLTRB(14.0, 8, 14, 8),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: BRColors.btGreen, width: 1.5),
            borderRadius: BorderRadius.circular(4)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
            color: BRColors.bglightBlue,
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: BRColors.btRed,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(4)),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: BRColors.bgLightGray,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(4)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: BRColors.btDarkBlue,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(4)),
      ));
}

const filledInputDecoration = InputDecoration(
    fillColor: BRColors.white,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
      borderSide: BorderSide(
        color: BRColors.bgDarkBlue,
        width: 1.5,
      ),
    ));
