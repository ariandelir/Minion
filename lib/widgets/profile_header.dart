import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_ui_app/core/constants/dimensions.dart';
import 'package:mini_ui_app/core/constants/strings.dart';
import 'package:mini_ui_app/l10n/app_localizations.dart';

/// Displays the user's profile section with avatar, name, job, and location info.
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // Get localized strings for current language
    final localization = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(AppDimensions.kPaddingExtraLarge),
      child: Row(
        children: [
          // Profile picture
          ClipRRect(
            borderRadius: AppDimensions.kDefaultBorderRadius,
            child: Image.asset(
              AppStrings.profileImagePath,
              width: AppDimensions.kProfileImageSize,
              height: AppDimensions.kProfileImageSize,
            ),
          ),
          const SizedBox(width: AppDimensions.kSpacingMedium),

          // User info: name, job, location
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // User name
                Text(
                  localization.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: AppDimensions.kSpacingExtraSmall),

                // User job title
                Text(localization.job),
                const SizedBox(height: AppDimensions.kSpacingSmall),

                // User location row
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.location,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      size: AppDimensions.kIconSizeSmall,
                    ),
                    const SizedBox(width: AppDimensions.kSpacingExtraSmall),
                    Text(
                      localization.location,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(CupertinoIcons.heart, color: Theme.of(context).primaryColor),
        ],
      ),
    );
  }
}