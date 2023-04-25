import 'package:MastersApp/screens/main.page.dart';
import 'package:MastersApp/screens/settings.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'models/settings.dart';

import 'shared/config.dart';
import 'shared/translation.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
late Isar isar;
late Settings settings;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
  const InitializationSettings initializationSettings = InitializationSettings(android: initializationSettingsAndroid);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  await isarInit();
  runApp(const App());
}

Future<void> isarInit() async {
  isar = await Isar.open([
    SettingsSchema,
  ], directory: (await getApplicationSupportDirectory()).path);

  settings = await isar.settings.where().findFirst() ?? Settings();
}


class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    final config = Config();
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          translations: Translation(),
          locale: Locale(Translation.languages[settings.language].languageCode, Translation.languages[settings.language].countryCode),
          fallbackLocale: config.fallbackLocale,
          debugShowCheckedModeBanner: false,
          home: const MainPage(),
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
