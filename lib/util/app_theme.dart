import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppThemeData {
  //
  AppThemeData._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: white,
    primaryColor: colorPrimary,
    primaryColorDark: colorPrimary,
    errorColor: Colors.red,
    hoverColor: Colors.white54,
    dividerColor: dots_color,
    fontFamily: GoogleFonts.vazirmatn().fontFamily,
    appBarTheme: const AppBarTheme(
      color: appLayout_background,
      iconTheme: IconThemeData(color: textColorPrimary),
      systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
    ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
    colorScheme: const ColorScheme.light(primary: colorPrimary),
    cardTheme: const CardTheme(color: Colors.white),
    cardColor: Colors.white,
    iconTheme: const IconThemeData(color: textColorPrimary),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: white),
    textTheme: TextTheme(
      button: TextStyle(color: colorPrimary),
      headline6: TextStyle(color: textColorPrimary),
      subtitle2: TextStyle(color: textColorSecondary),
        //titleLarge: TextStyle(color: textColorSecondary, fontWeight: FontWeight.bold)
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: OpenUpwardsPageTransitionsBuilder(),
    }),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: appBackgroundColorDark,
    highlightColor: appBackgroundColorDark,
    errorColor: const Color(0xFFCF6676),
    appBarTheme: const AppBarTheme(
      color: appBackgroundColorDark,
      iconTheme: IconThemeData(color: black),
      systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    ),
    primaryColor: color_primary_black,
    dividerColor: const Color(0xFFDADADA).withOpacity(0.3),
    primaryColorDark: color_primary_black,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.white),
    hoverColor: Colors.black12,
    fontFamily: GoogleFonts.vazirmatn().fontFamily,
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: appBackgroundColorDark),
    primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.white), overline: TextStyle(color: Colors.white)),
    cardTheme: const CardTheme(color: cardBackgroundBlackDark),
    cardColor: appSecondaryBackgroundColor,
    iconTheme: const IconThemeData(color: white),
    textTheme: TextTheme(
      button: TextStyle(color: color_primary_black),
      headline6: TextStyle(color: white),
      subtitle2: TextStyle(color: Colors.white54),
      //titleLarge: TextStyle(color: Colors.white54, fontWeight: FontWeight.bold)
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: const ColorScheme.dark(primary: appBackgroundColorDark, onPrimary: cardBackgroundBlackDark, primaryVariant: color_primary_black).copyWith(secondary: white),
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
      TargetPlatform.macOS: OpenUpwardsPageTransitionsBuilder(),
    }),
  );
}
