import 'package:flutter/material.dart';
import 'package:website/constants/style.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeWebsite {
  static ThemeData get websiteTheme => ThemeData(
    useMaterial3: true,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    scaffoldBackgroundColor: Color(0xFF0E2028),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Style.primaryColor,
    ).copyWith(primary: Style.primaryColor),
    fontFamily: GoogleFonts.poppins().fontFamily,
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: TextStyle(color: Style.white),
      displayMedium: TextStyle(color: Style.white),
      displaySmall: TextStyle(color: Style.white),
      headlineLarge: TextStyle(color: Style.white),
      headlineMedium: TextStyle(color: Style.white),
      headlineSmall: TextStyle(color: Style.white),
      titleLarge: TextStyle(color: Style.white),
      titleMedium: TextStyle(color: Style.white),
      titleSmall: TextStyle(color: Style.white),
      bodyLarge: TextStyle(color: Style.white),
      bodyMedium: TextStyle(color: Style.white),
      bodySmall: TextStyle(color: Style.white),
    ),
    appBarTheme: AppBarTheme(
      toolbarHeight: 80,
      backgroundColor: Color(0xFF0E2028),
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Style.white,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      actionsPadding: .only(right: 24),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll<Color>(Style.white),
        textStyle: WidgetStatePropertyAll<TextStyle>(
          TextStyle(fontSize: 14, fontWeight: .w300),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: Color(0xFF0E2028),
        foregroundColor: Style.white,
        padding: .symmetric(horizontal: 14, vertical: 12),
        textStyle: TextStyle(
          color: Style.white,
          fontWeight: .w400,
          fontSize: 12,
        ),
        iconAlignment: .end,
        side: BorderSide(color: Style.white, width: 0.8),
        iconSize: 14,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: .symmetric(horizontal: 14, vertical: 12),
        iconSize: 14,
        iconAlignment: IconAlignment.end,
        fixedSize: Size(160, 44),
        foregroundColor: Style.secondaryColor,
        backgroundColor: Style.primaryColor,
        textStyle: TextStyle(fontWeight: .bold),
      ),
    ),
    expansionTileTheme: ExpansionTileThemeData().copyWith(
      iconColor: Style.secondaryColor,
      collapsedIconColor: Style.secondaryColor,

      shape: RoundedRectangleBorder(
        borderRadius: .circular(12),
        side: BorderSide(
          color: Colors.grey.withAlpha((255 * 0.3).toInt()),
          width: 1,
        ),
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: .circular(12),
        side: BorderSide(
          color: Colors.grey.withAlpha((255 * 0.3).toInt()),
          width: 1,
        ),
      ),
      collapsedTextColor: Style.secondaryColor,
      textColor: Style.secondaryColor,
    ),
  );
}
