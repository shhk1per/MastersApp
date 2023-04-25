import 'package:MastersApp/models/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../shared/translation.dart';

class SettingsController {
  Locale _locale = Locale(Translation.languages[0].languageCode, Translation.languages[0].countryCode);
  Locale get locale => _locale;

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  bool _darkMode = false;
  bool get darkMode => _darkMode;

  bool _notification = true;
  bool get notification => _notification;

  Future<void> updateLanguage(int l) async {
    try {
      _selectedIndex = l;
      settings.language = l;
      Get.updateLocale(Locale(Translation.languages[l].languageCode, Translation.languages[l].countryCode));
      await isar.writeTxn(() async {
        await isar.settings.put(settings);
      });
      EasyLoading.showSuccess('languageChanged'.tr);
    } catch (e){
      EasyLoading.showError('error'.tr);
    }
  }

  Future<void> toggleTheme() async {
    try {
      _darkMode = _darkMode ? false : true;
      settings.darkMode = _darkMode;
      await isar.writeTxn(() async {
        await isar.settings.put(settings);
      });
      EasyLoading.showSuccess('themeChanged'.tr);
    } catch (e){
      EasyLoading.showError('error'.tr);
    }
  }

  Future<void> toggleNotification() async {
    try {
      _notification = _notification ? false : true;
      settings.notification = _notification;
      await isar.writeTxn(() async {
        await isar.settings.put(settings);
      });
      EasyLoading.showSuccess('notificationChanged'.tr);
    } catch (e){
      EasyLoading.showError('error'.tr);
    }
  }
}