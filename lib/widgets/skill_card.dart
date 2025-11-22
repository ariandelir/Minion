import 'package:flutter/material.dart';
import 'package:mini_ui_app/core/constants/dimensions.dart';

/// Enum representing available skill types.
enum SkillType { photoshop, afterEffect, illustrator, lightRoom, xd }

/// A reusable widget that displays an individual skill card with an icon and title.
/// Highlights the card visually when active.
class Skill extends StatelessWidget {
  final SkillType type;
  final String title;
  final String imagePath;
  final Color shadowColor;
  final bool isActive; // Indicates if this skill is currently selected
  final Function() onTap; // Callback when the card is tapped

  const Skill({
    super.key,
    required this.title,
    required this.imagePath,
    required this.shadowColor,
    required this.isActive,
    required this.type,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Common border radius for consistent rounded corners
    final BorderRadius defaultBorderRadius = AppDimensions.kCardBorderRadius;

    return InkWell(
      onTap: onTap,
      borderRadius: defaultBorderRadius,
      child: Container(
        width: AppDimensions.kSkillCardSize,
        height: AppDimensions.kSkillCardSize,
        // Add background color only if the skill is active
        decoration: isActive
            ? BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: defaultBorderRadius,
              )
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Skill icon with conditional shadow effect
            Container(
              decoration: isActive
                  ? BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: shadowColor.withAlpha(80),
                          blurRadius: AppDimensions.kShadowBlurRadius,
                        ),
                      ],
                    )
                  : null,
              child: Image.asset(
                imagePath,
                width: AppDimensions.kSkillIconSize,
                height: AppDimensions.kSkillIconSize,
              ),
            ),
            const SizedBox(height: AppDimensions.kSpacingSmall),

            Text(title, style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
      ),
    );
  }
}