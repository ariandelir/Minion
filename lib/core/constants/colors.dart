// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

/// Defines all static color constants used throughout the application.
/// Naming convention uses 'k' prefix (e.g., kPrimaryColor).
class AppColors {
  // -------------------------------------------------------------------
  // 1. Core Color
  // -------------------------------------------------------------------
  static final Color kPrimaryColor = Colors.pink.shade400;

  // -------------------------------------------------------------------
  // 2. Light Theme Palette
  // -------------------------------------------------------------------
  static const Color kBackgroundLight = Colors.white;
  static final Color kPrimaryTextLight = Colors.grey.shade900;
  static final Color kSecondaryTextLight =
      Colors.grey.shade900.withOpacity(0.8);

  static const Color kSurfaceLight = Color(0x0d000000);
  static const Color kAppBarLight = Color.fromARGB(255, 235, 235, 235);

  // -------------------------------------------------------------------
  // 3. Dark Theme Palette
  // -------------------------------------------------------------------
  static const Color kBackgroundDark = Color.fromARGB(255, 30, 30, 30);
  static const Color kPrimaryTextDark = Colors.white;
  static const Color kSecondaryTextDark = Colors.white70;

  static const Color kSurfaceDark = Color(0x0dffffff);
  static const Color kAppBarDark = Colors.black;

  // -------------------------------------------------------------------
  // 4. Skill / Utility Colors (from skill_list.dart)
  // -------------------------------------------------------------------
  static const Color kPhotoshopShadow = Colors.blue;
  static const Color kXDShadow = Colors.pink;
  static const Color kLightRoomShadow = Colors.blue;

  static Color kIllustratorShadow = Colors.orange.shade100;
  static Color kAfterEffectShadow = Colors.blue.shade800;
}
