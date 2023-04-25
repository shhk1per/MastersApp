import 'package:get/get.dart';
import '../models/languageModel.dart';

class Translation extends Translations {
  static final List<LanguageModel> languages = [
    LanguageModel(0, "English", "en", "US"),
    LanguageModel(1, "Русский", "ru", "RU"),
  ];
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'home': 'Home',
      'newHabit': 'New habit',
      'achievements': 'Achievements',
      'settings': 'Settings',
      'darkMode': 'Dark Mode',
      'darkModeDescription': 'To toggle the dark mode',
      'notification': 'Notification',
      'notificationDescription': 'To remind habits',
      'language': 'Language',
      'languageDescription': 'Change the language',
      'share': 'Share',
      'shareDescription': 'Recommend this app',
      'languageChanged': 'Language changed!',
      'themeChanged': 'Theme changed!',
      'notificationChanged': 'Notification Changed!',
      'error': 'Error',
    },
    'ru_RU': {
      'home': 'Главная',
      'newHabit': 'Доб.Привычки',
      'achievements': 'Достижения',
      'settings': 'Настройки',
      'darkMode': 'Темная тема',
      'darkModeDescription': 'Переключить темный режим',
      'notification': 'Уведомление',
      'notificationDescription': 'Напоминание о привычках',
      'language': 'Язык',
      'languageDescription': 'Переключение языка',
      'share': 'Поделиться',
      'shareDescription': 'Порекомендуйте это приложение',
      'languageChanged': 'Язык изменен!',
      'themeChanged': 'Тема изменена!',
      'notificationChanged': 'Уведомления изменены!',
      'error': 'Ошибка',
    },
  };
}