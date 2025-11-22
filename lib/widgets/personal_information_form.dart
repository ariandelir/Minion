import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_ui_app/core/constants/dimensions.dart';
import 'package:mini_ui_app/l10n/app_localizations.dart';

/// A form widget for entering and saving personal information such as
/// email and password.
class PersonalInformationForm extends StatelessWidget {
  const PersonalInformationForm({super.key});

  @override
  Widget build(BuildContext context) {
    // Get localized strings for current language
    final localization = AppLocalizations.of(context)!;

    return Padding(
      // Using AppDimensions for consistent horizontal and vertical padding
      padding: const EdgeInsets.fromLTRB(
        AppDimensions.kPaddingHorizontal,
        AppDimensions.kPaddingVerticalSmall,
        AppDimensions.kPaddingHorizontal,
        AppDimensions.kPaddingVerticalSmall,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section title
          Text(
            localization.personalInformation,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: AppDimensions.kPaddingVerticalSmall),

          // Email input field
          TextField(
            decoration: InputDecoration(
              label: Text(localization.email),
              prefixIcon: const Icon(CupertinoIcons.at),
            ),
          ),
          const SizedBox(height: AppDimensions.kSpacingSmall),

          // Password input field
          TextField(
            decoration: InputDecoration(
              label: Text(localization.password),
              prefixIcon: const Icon(CupertinoIcons.lock),
            ),
          ),
          const SizedBox(height: AppDimensions.kPaddingVerticalSmall),

          // Save button
          SizedBox(
            width: double.infinity,
            height: AppDimensions.kButtonHeight,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                localization.save,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
