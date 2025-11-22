import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_ui_app/core/constants/dimensions.dart';
import 'package:mini_ui_app/l10n/app_localizations.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the current theme data
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final localization = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(AppDimensions.kPaddingSplash),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorScheme.surface,
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: colorScheme.primary.withOpacity(0.2),
                    blurRadius: AppDimensions.kShadowBlurRadius,
                    spreadRadius: AppDimensions.kSpreadRadius,
                  ),
                ],
              ),
              child: Icon(
                CupertinoIcons.paintbrush_fill,
                size: AppNumbers.kIconSizeSplash,
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(height: AppDimensions.kSpacingSplash),

            Text(
              localization.splashTitle,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: AppDimensions.kSpacingSmall),
            Text(
              localization.splashText,
              style: theme.textTheme.bodyMedium?.copyWith(
                // ignore: deprecated_member_use
                color: colorScheme.onSurface.withOpacity(0.7),
                letterSpacing: AppDimensions.kLetterSpacing,
              ),
            ),
            const SizedBox(height: AppDimensions.kSpacingSplash),

            // Loading indicator
            SizedBox(
              width: AppNumbers.kLoadingIndicatorSplash,
              height: AppNumbers.kLoadingIndicatorSplash,
              child: CircularProgressIndicator(
                strokeWidth: AppDimensions.kStrokeWidth,
                color: colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
