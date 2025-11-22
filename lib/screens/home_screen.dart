import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_ui_app/core/config/language.dart';
import 'package:mini_ui_app/core/constants/dimensions.dart';
import 'package:mini_ui_app/l10n/app_localizations.dart';
import 'package:mini_ui_app/widgets/language_switcher.dart';
import 'package:mini_ui_app/widgets/personal_information_form.dart';
import 'package:mini_ui_app/widgets/profile_header.dart';
import 'package:mini_ui_app/widgets/skill_card.dart';
import 'package:mini_ui_app/widgets/skill_list.dart';

/// Main home page widget of the app.
/// Displays user profile info, skills, and language/theme controls.
class HomeScreen extends StatefulWidget {
  // Callback to toggle between light and dark themes
  final Function() toggleThemeMode;

  // Callback when user selects a new language
  final Function(Language language) selectedLanguageChanged;

  const HomeScreen({
    super.key,
    required this.toggleThemeMode,
    required this.selectedLanguageChanged,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Currently selected skill
  SkillType skill = SkillType.photoshop;

  // Currently selected app language
  Language language = Language.en;

  // Updates the selected skill in the state
  void updateSelectedSkill(SkillType newSkill) {
    setState(() {
      skill = newSkill;
    });
  }

  // Updates the selected language in the state and calls the parent callback
  void updateSelectedLanguage(Language newLanguage) {
    setState(() {
      language = newLanguage;
    });
    widget.selectedLanguageChanged(newLanguage);
  }

  @override
  Widget build(BuildContext context) {
    // Get localized strings for current language
    final localization = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(localization.profileTitle),
        actions: [
          // Theme switch button
          IconButton(
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? CupertinoIcons.sun_max
                  : CupertinoIcons.moon,
            ),
            onPressed: widget.toggleThemeMode,
          ),
          const SizedBox(width: AppNumbers.kSpacingSmall), 
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Profile header section
              const ProfileHeader(),
              const Divider(),

              // Profile summary
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppNumbers.kSpacingExtraLarge,
                  vertical: AppNumbers.kSpacingSmall,
                ),
                child: Text(
                  localization.summary,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const Divider(),

              // Language switcher component
              LanguageSwitcher(
                language: language,
                onLanguageChanged: updateSelectedLanguage,
              ),
              const Divider(),

              // Skill section header
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppNumbers.kSpacingExtraLarge,
                  AppNumbers.kSpacingLarge,
                  AppNumbers.kSpacingExtraLarge,
                  AppNumbers.kSpacingMedium,
                ), 
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      localization.skills,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      width: AppNumbers.kSpacingSmallest,
                    ), 
                    const Icon(
                      CupertinoIcons.chevron_down,
                      size: AppNumbers.kIconSizeTiny,
                    ), 
                    const SizedBox(
                      height: AppNumbers.kSpacingSmall,
                    ), 
                  ],
                ),
              ),

              // List of skills (selectable)
              SkillList(
                selectedSkill: skill,
                onSkillSelected: updateSelectedSkill,
              ),
              const Divider(),

              // Personal information input form
              const PersonalInformationForm(),
            ],
          ),
        ),
      ),
    );
  }
}
