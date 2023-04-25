import 'package:MastersApp/models/languageModel.dart';
import 'package:MastersApp/widgets/setting_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/settings.controller.dart';
import '../main.dart';
import '../shared/translation.dart';

class SettingsList extends StatefulWidget {
  const SettingsList({Key? key}) : super(key: key);

  @override
  State<SettingsList> createState() => _SettingsListState();
}

class _SettingsListState extends State<SettingsList> {
  SettingsController settingsService = Get.put(SettingsController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingTile(
            settingTitle: 'darkMode'.tr,
            settingDescription: 'darkModeDescription'.tr,
            settingsWidget: CupertinoSwitch(
                value: settingsService.darkMode,
                onChanged: (bool value) {
                  setState(() {
                    settingsService.toggleTheme();
                  });
                },
            ),
          ),
        const SizedBox(height: 12),
        SettingTile(
          settingTitle: 'notification'.tr,
          settingDescription: 'notificationDescription'.tr,
          settingsWidget: CupertinoSwitch(
            value: settingsService.notification,
            onChanged: (bool value) {
              setState(() {
                settingsService.toggleNotification();
              });
            },
          ),
        ),
        const SizedBox(height: 12),
        SettingTile(
          settingTitle: 'language'.tr,
          settingDescription: 'languageDescription'.tr,
          settingsWidget: DropdownButton(
            value: settingsService.selectedIndex,
            items: Translation.languages.map((LanguageModel language) {
              return DropdownMenuItem(
                  value: language.index,
                  child: Text("${language.languageName} ${language.countryCode}"),
              );
            }).toList(),
            onChanged: (index){
              settingsService.updateLanguage(index!);
            },
          ),
        )
        ],
      );
  }
}
