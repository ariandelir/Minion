import 'package:flutter/material.dart';
import 'package:mini_ui_app/core/constants/colors.dart';
import 'package:mini_ui_app/core/constants/dimensions.dart';
import 'package:mini_ui_app/core/constants/strings.dart';
import 'skill_card.dart';

/// Displays a list of selectable skill cards in a responsive wrap layout.
class SkillList extends StatelessWidget {
  // Currently selected skill
  final SkillType selectedSkill;

  // Callback when a skill is tapped
  final Function(SkillType) onSkillSelected;

  const SkillList({
    super.key,
    required this.selectedSkill,
    required this.onSkillSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      // Wrap allows skills to flow across multiple lines if needed
      child: Wrap(
        direction: Axis.horizontal,
        spacing: AppDimensions.kSpacingSmall,
        runSpacing: AppDimensions.kSpacingSmall,
        children: [
          // Photoshop skill card
          Skill(
            type: SkillType.photoshop,
            title: AppStrings.photoshopTitle,
            imagePath: AppStrings.photoshopImagePath,
            shadowColor: AppColors.kPhotoshopShadow,
            isActive: selectedSkill == SkillType.photoshop,
            onTap: () {
              onSkillSelected(SkillType.photoshop);
            },
          ),

          // Adobe XD skill card
          Skill(
            type: SkillType.xd,
            title: AppStrings.xdTitle,
            imagePath: AppStrings.xdImagePath,
            shadowColor: AppColors.kXDShadow,
            isActive: selectedSkill == SkillType.xd,
            onTap: () {
              onSkillSelected(SkillType.xd);
            },
          ),

          // Illustrator skill card
          Skill(
            type: SkillType.illustrator,
            title: AppStrings.illustratorTitle,
            imagePath: AppStrings.illustratorImagePath,
            shadowColor: AppColors.kIllustratorShadow,
            isActive: selectedSkill == SkillType.illustrator,
            onTap: () {
              onSkillSelected(SkillType.illustrator);
            },
          ),

          // After Effect skill card
          Skill(
            type: SkillType.afterEffect,
            title: AppStrings.afterEffectTitle,
            imagePath: AppStrings.afterEffectImagePath,
            shadowColor: AppColors.kAfterEffectShadow,
            isActive: selectedSkill == SkillType.afterEffect,
            onTap: () {
              onSkillSelected(SkillType.afterEffect);
            },
          ),

          // Lightroom skill card
          Skill(
            type: SkillType.lightRoom,
            title: AppStrings.lightRoomtTitle,
            imagePath: AppStrings.lightRoomImagePath,
            shadowColor: AppColors.kLightRoomShadow,
            isActive: selectedSkill == SkillType.lightRoom,
            onTap: () {
              onSkillSelected(SkillType.lightRoom);
            },
          ),
        ],
      ),
    );
  }
}
