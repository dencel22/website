import 'package:website/export.dart';

class ThemeWebsite {
  static ThemeData get websiteTheme => ThemeData(
    useMaterial3: true,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    scaffoldBackgroundColor: Style.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Style.primaryColor,
    ).copyWith(primary: Style.primaryColor),
    fontFamily: GoogleFonts.poppins().fontFamily,
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(),
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
    inputDecorationTheme: InputDecorationTheme(
      errorStyle: TextStyle(color: const Color.fromARGB(255, 255, 17, 0)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 1,
          color: Colors.grey.withAlpha((255 * 0.4).toInt()),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 1,
          color: Colors.grey.withAlpha((255 * 0.4).toInt()),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 1,
          color: Colors.grey.withAlpha((255 * 0.4).toInt()),
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 1,
          color: Colors.grey.withAlpha((255 * 0.4).toInt()),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 1,
          color: const Color.fromARGB(255, 255, 17, 0),
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
        minimumSize: Size(160, 40),
        shape: RoundedRectangleBorder(borderRadius: .circular(8)),
        padding: .symmetric(horizontal: 14, vertical: 12),
        iconSize: 14,
        iconAlignment: IconAlignment.end,
        fixedSize: Size(double.infinity, 40),
        foregroundColor: Style.white,
        backgroundColor: Style.primaryColor,
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
