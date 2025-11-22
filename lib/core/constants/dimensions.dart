import 'package:flutter/material.dart';

/// Dimension constants used throughout the application for spacing,
/// padding, sizing, and border radii.
class AppDimensions {
  // -------------------------------------------------------------------
  // Spacing Constants
  // -------------------------------------------------------------------
  static const double kSpacingExtraSmall = 3.0;
  static const double kSpacingSmall = 8.0;
  static const double kSpacingMedium = 16.0;
  static const double kSpacingSplash = 48.0;

  // -------------------------------------------------------------------
  // Padding Constants
  // -------------------------------------------------------------------
  static const double kPaddingExtraLarge = 32.0;
  static const kPaddingLanguageSwitcher = EdgeInsets.fromLTRB(32, 12, 32, 12);
  static const double kPaddingHorizontal = 32.0;
  static const double kPaddingVerticalSmall = 12.0;
  static const double kPaddingSplash = 20.0;

  // -------------------------------------------------------------------
  // Typography / Letter Spacing
  // -------------------------------------------------------------------
  static const double kLetterSpacing = 1.2;

  // -------------------------------------------------------------------
  // Stroke Width
  // -------------------------------------------------------------------
  static const double kStrokeWidth = 2.5;

  // -------------------------------------------------------------------
  // Border Radii
  // -------------------------------------------------------------------
  static const BorderRadius kDefaultBorderRadius =
      BorderRadius.all(Radius.circular(8.0));
  static const BorderRadius kCardBorderRadius =
      BorderRadius.all(Radius.circular(12.0));

  // -------------------------------------------------------------------
  // Icon & Widget Sizes
  // -------------------------------------------------------------------
  static const double kIconSizeSmall = 14.0;
  static const double kIconSizeExtraSmall = 12.0;
  static const double kProfileImageSize = 60.0;
  static const double kSkillCardSize = 120.0;
  static const double kSkillIconSize = 40.0;
  static const double kButtonHeight = 48.0;

  // -------------------------------------------------------------------
  // Shadows
  // -------------------------------------------------------------------
  static const double kShadowBlurRadius = 20.0;
  static const double kSpreadRadius = 10.0;
}

/// Numeric constants used for sizing, spacing, splash screen timing,
/// widget geometry, and typography.


class AppNumbers {
  // -------------------------------------------------------------------
  // Small Icon Sizes
  // -------------------------------------------------------------------
  static const double kIconSizeTiny = 14.0;
  static const double kIconSizeSmall = 14.0;

  // -------------------------------------------------------------------
  // Splash Screen
  // -------------------------------------------------------------------
  static const int kSplashDurationSeconds = 3;
  static const double kLogoSizeSplash = 120.0;
  static const double kLoadingIndicatorSplash = 24.0;
  static const double kIconSizeSplash = 60.0;
  static const double kFontSizeSplashTitle = 28.0;

  // -------------------------------------------------------------------
  // Border Radius
  // -------------------------------------------------------------------
  static const double kBorderRadiusDefault = 12.0;
  static const double kBorderRadiusLarge = 12.0;

  // -------------------------------------------------------------------
  // Layout Elevation / Heights
  // -------------------------------------------------------------------
  static const double kAppBarElevation = 2.0;
  static const double kButtonHeight = 48.0;

  // -------------------------------------------------------------------
  // Divider
  // -------------------------------------------------------------------
  static const double kDividerThickness = 1.0;

  // -------------------------------------------------------------------
  // Spacing
  // -------------------------------------------------------------------
  static const double kSpacingSmallest = 2.0;
  static const double kSpacingTiny = 3.0;
  static const double kSpacingSmall = 8.0;
  static const double kSpacingMedium = 12.0;
  static const double kSpacingLarge = 16.0;
  static const double kSpacingExtraLarge = 32.0;

  // -------------------------------------------------------------------
  // Widget & UI Sizes
  // -------------------------------------------------------------------
  static const double kAvatarSize = 60.0;
  static const double kSkillIconSize = 40.0;
  static const double kSkillCardSize = 120.0;
  static const double kShadowBlurRadius = 20.0;

  // -------------------------------------------------------------------
  // Font Sizes
  // -------------------------------------------------------------------
  static const double kFontSizeBodyLarge = 13.0;
  static const double kFontSizeBodyMedium = 15.0;
  static const double kFontSizeSmall = 14.0;
  static const double kFontSizeMedium = 16.0;
  static const double kFontSizeLarge = 18.0;
}

/// Static text-size constants used across the application.
/// (Extra small → extra large)
class AppTextStyles {
  static const double kFontSizeExtraSmall = 12.0;
  static const double kFontSizeSmall = 13.0;
  static const double kFontSizeMedium = 15.0;
  static const double kFontSizeLarge = 16.0;
  static const double kFontSizeExtraLarge = 18.0;
}
