import 'package:flutter_whatsapp/modules/chat/chat_info_screen_binding.dart';
import 'package:flutter_whatsapp/modules/home/home_screen.dart';
import 'package:flutter_whatsapp/modules/home/home_screen_binding.dart';
import 'package:flutter_whatsapp/modules/setting/setting_screen.dart';
import 'package:flutter_whatsapp/modules/setting/setting_screen_binding.dart';
import 'package:flutter_whatsapp/modules/welcome/welcome_screen.dart';
import 'package:flutter_whatsapp/modules/welcome/welcome_screen_binding.dart';
import 'package:get/get.dart';

import '../modules/chat/chat_info_screen.dart';
import '../modules/chat_info/chat_screen.dart';
import '../modules/chat_info/chat_screen_binding.dart';
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
    GetPage(
      name: AppRoutes.chatScreen,
      page: () => ChatScreen(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: AppRoutes.chatScreen,
      page: () => ChatInfoScreen(),
      binding: ChatInfoBinding(),
    )
  ];
}
