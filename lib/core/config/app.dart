import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mini_ui_app/core/config/language.dart';
import 'package:mini_ui_app/core/config/theme_config.dart';
import 'package:mini_ui_app/l10n/app_localizations.dart';
import 'package:mini_ui_app/screens/home_screen.dart';
import 'package:mini_ui_app/screens/splash_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // Initial theme and language settings (Global State)
  ThemeMode themeMode = ThemeMode.dark;
  Locale locale = const Locale('en');

  // Variable to control the visibility of the Splash Screen
  bool _showSplash = true;

  @override
  void initState() {
    super.initState();
    // Start a timer to dismiss the splash screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        // Trigger rebuild to switch to HomeScreen
        _showSplash = false; 
      });
    });
  }

  // Function to toggle between light and dark themes
  void _toggleTheme() {
    setState(() {
      themeMode = themeMode == ThemeMode.dark
          ? ThemeMode.light
          : ThemeMode.dark;
    });
  }

  // Function to change the application language
  void _changeLanguage(Language newLanguage) {
    setState(() {
      locale = newLanguage == Language.en
          ? const Locale('en')
          : const Locale('fa');
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeConfig = ThemeConfig();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minion Portfolio',

      // Localization setup for multi-language support
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      // Apply current locale
      locale: locale, 

      // Themes setup
      theme: themeConfig.getLightTheme(locale.languageCode),
      darkTheme: themeConfig.getDarkTheme(locale.languageCode),
      // Apply current theme mode
      themeMode: themeMode, 

      // Conditionally display SplashScreen or HomeScreen
      home: _showSplash
          ? const SplashScreen()
          : HomeScreen(
              // Pass state-changing callbacks to the HomeScreen
              toggleThemeMode: _toggleTheme,
              selectedLanguageChanged: _changeLanguage,
            ),
    );
  }
}
