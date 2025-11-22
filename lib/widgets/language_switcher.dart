import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_ui_app/core/config/language.dart';
import 'package:mini_ui_app/core/constants/dimensions.dart';
import 'package:mini_ui_app/l10n/app_localizations.dart';

/// A widget that allows users to switch between English and Farsi languages.
class LanguageSwitcher extends StatelessWidget {
  // Currently selected language
  final Language language;

  // Callback triggered when user changes the language
  final Function(Language) onLanguageChanged;

  const LanguageSwitcher({
    super.key,
    required this.language,
    required this.onLanguageChanged,
  });

  @override
  Widget build(BuildContext context) {
    // Access localized text for current language
    final localization = AppLocalizations.of(context)!;

    return Padding(
      padding: AppDimensions.kPaddingLanguageSwitcher,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Label showing "Selected Language"
          Text(localization.selectedLanguage),

          // Cupertino-style segmented control for language toggle
          CupertinoSlidingSegmentedControl<Language>(
            groupValue: language, // current active language
            thumbColor: Theme.of(context).colorScheme.primary,
            children: {
              Language.en: Text(
                localization.enLanguage,
                style: const TextStyle(fontSize: AppTextStyles.kFontSizeMedium),
              ),
              Language.fa: Text(
                localization.faLanguage,
                style: const TextStyle(fontSize: AppTextStyles.kFontSizeMedium),
              ),
            },
            // When user switches segment, notify parent widget
            onValueChanged: (value) {
              if (value != null) onLanguageChanged(value);
            },
          ),
        ],
      ),
    );
  }
}