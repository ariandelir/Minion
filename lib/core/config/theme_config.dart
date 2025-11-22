import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_ui_app/core/constants/colors.dart'; // استفاده از ثوابت رنگ
import 'package:mini_ui_app/core/constants/dimensions.dart';
import 'package:mini_ui_app/core/constants/strings.dart';

/// A configuration class responsible for creating and defining the application's
/// light and dark themes, including primary colors, typography, and widget styles.
class ThemeConfig {
  /// Builds the light theme configuration for the application.
  /// [languageCode] determines which font to use for the TextTheme.

  ThemeData getLightTheme(String languageCode) {
    // Using color constants
    final primaryColor = AppColors.kPrimaryColor;
    final primaryTextColorLight = AppColors.kPrimaryTextLight;
    final backgroundColorLight = AppColors.kBackgroundLight;
    final appBarColorLight = AppColors.kAppBarLight;
    final surfaceColorLight = AppColors.kSurfaceLight;

    return ThemeData(
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColorLight,

      // AppBar theming
      appBarTheme: AppBarTheme(
        backgroundColor: appBarColorLight,
        foregroundColor: primaryTextColorLight,
        elevation: AppNumbers.kAppBarElevation,
        centerTitle: true,
      ),

      // InputDecoration (TextField) theming
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(fontSize: AppNumbers.kFontSizeSmall),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppNumbers.kBorderRadiusDefault),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: surfaceColorLight,
        contentPadding: const EdgeInsets.symmetric(
          vertical: AppNumbers.kSpacingMedium,
          horizontal: AppNumbers.kSpacingLarge,
        ),
      ),

      // ElevatedButton theming
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(primaryColor),
          foregroundColor: WidgetStateProperty.all(AppColors.kPrimaryTextDark),
          textStyle: WidgetStateProperty.all(
            const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppNumbers.kFontSizeSmall,
            ),
          ),
          minimumSize: WidgetStateProperty.all(
            const Size.fromHeight(AppNumbers.kButtonHeight),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppNumbers.kBorderRadiusDefault,
              ),
            ),
          ),
        ),
      ),

      dividerTheme: DividerThemeData(
        color: surfaceColorLight,
        thickness: AppNumbers.kDividerThickness,
        space: AppNumbers.kSpacingLarge,
      ),

      // Apply font based on language
      textTheme: languageCode == AppStrings.englishLanguageCode
          ? _enPrimaryTextTheme
          : _faPrimaryTextTheme,

      // Define ColorScheme for light theme
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        onPrimary: AppColors.kPrimaryTextDark,
        surface: surfaceColorLight,
        onSurface: primaryTextColorLight,
        // ignore: deprecated_member_use
        background: backgroundColorLight,
      ),
    );
  }

  /// Builds the dark theme configuration for the application.
  /// [languageCode] determines which font to use for the TextTheme.

  ThemeData getDarkTheme(String languageCode) {
    // Using color constants
    final primaryColor = AppColors.kPrimaryColor;
    final primaryTextColorDark = AppColors.kPrimaryTextDark;
    final backgroundColorDark = AppColors.kBackgroundDark;
    final appBarColorDark = AppColors.kAppBarDark;
    final surfaceColorDark = AppColors.kSurfaceDark;

    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColorDark,

      // AppBar theming
      appBarTheme: AppBarTheme(
        backgroundColor: appBarColorDark,
        foregroundColor: primaryTextColorDark,
        elevation: AppNumbers.kAppBarElevation,
        centerTitle: true,
      ),

      // InputDecoration (TextField) theming
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(fontSize: AppNumbers.kFontSizeSmall),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppNumbers.kBorderRadiusDefault),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: surfaceColorDark,
        contentPadding: const EdgeInsets.symmetric(
          vertical: AppNumbers.kSpacingMedium,
          horizontal: AppNumbers.kSpacingLarge,
        ),
      ),

      // ElevatedButton theming
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(primaryColor),
          foregroundColor: WidgetStateProperty.all(primaryTextColorDark),
          textStyle: WidgetStateProperty.all(
            const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppNumbers.kFontSizeSmall,
            ),
          ),
          minimumSize: WidgetStateProperty.all(
            const Size.fromHeight(AppNumbers.kButtonHeight),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppNumbers.kBorderRadiusDefault,
              ),
            ),
          ),
        ),
      ),

      dividerTheme: DividerThemeData(
        color: surfaceColorDark,
        thickness: 1,
        space: AppNumbers.kSpacingLarge,
      ),

      // Apply font based on language
      textTheme: languageCode == AppStrings.englishLanguageCode
          ? _enPrimaryTextTheme
          : _faPrimaryTextTheme,

      // Define ColorScheme for dark theme
      colorScheme: ColorScheme.dark(
        primary: primaryColor,
        onPrimary: primaryTextColorDark,
        surface: surfaceColorDark,
        onSurface: primaryTextColorDark,
        // ignore: deprecated_member_use
        background: backgroundColorDark,
      ),
    );
  }

  /// English text theme using the Google Fonts 'Lato' family.
  TextTheme get _enPrimaryTextTheme => GoogleFonts.latoTextTheme(
    const TextTheme(
      bodyLarge: TextStyle(fontSize: AppNumbers.kFontSizeBodyLarge),
      bodyMedium: TextStyle(fontSize: AppNumbers.kFontSizeBodyMedium),
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: AppNumbers.kFontSizeLarge,
      ),
      titleMedium: TextStyle(
        fontSize: AppNumbers.kFontSizeMedium,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(fontSize: AppNumbers.kFontSizeSmall,),
      labelLarge: TextStyle(fontSize: AppNumbers.kFontSizeSmall,),
    ),
  );

  /// Farsi/Persian text theme using the custom 'IranYekan' font family.
  TextTheme get _faPrimaryTextTheme => const TextTheme(
    bodyLarge: TextStyle(
      fontSize: AppNumbers.kFontSizeBodyLarge,
      fontFamily: AppStrings.faPrimaryFontFamily,
    ),
    bodyMedium: TextStyle(
      fontSize: AppNumbers.kFontSizeBodyMedium,
      fontFamily: AppStrings.faPrimaryFontFamily,
    ),
    titleLarge: TextStyle(
      fontSize: AppNumbers.kFontSizeLarge,
      fontWeight: FontWeight.bold,
      fontFamily: AppStrings.faPrimaryFontFamily,
    ),
    bodySmall: TextStyle(fontFamily: AppStrings.faPrimaryFontFamily),
    titleMedium: TextStyle(
      fontSize: AppNumbers.kFontSizeMedium,
      fontWeight: FontWeight.bold,
      fontFamily: AppStrings.faPrimaryFontFamily,
    ),
    titleSmall: TextStyle(fontSize: AppNumbers.kFontSizeSmall),
    labelLarge: TextStyle(
      fontSize: AppNumbers.kFontSizeSmall,
      fontFamily: AppStrings.faPrimaryFontFamily,
    ),
  );
}
