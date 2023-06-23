import 'package:flutter_whatsapp/modules/home/home_screen.dart';
import 'package:flutter_whatsapp/modules/home/home_screen_binding.dart';
import 'package:flutter_whatsapp/modules/setting/setting_screen.dart';
import 'package:flutter_whatsapp/modules/setting/setting_screen_binding.dart';
import 'package:flutter_whatsapp/modules/welcome/welcome_screen.dart';
import 'package:flutter_whatsapp/modules/welcome/welcome_screen_binding.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.homeScreen,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.settingScreen,
      page: () => SettingScreen(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: AppRoutes.welcomeScreen,
      page: () => WelcomeScreen(),
      binding: WelcomeBinding(),
    ),
  ];
}
