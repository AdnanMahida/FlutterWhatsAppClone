import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/modules/home/home_screen.dart';
import 'package:flutter_whatsapp/routes/app_pages.dart';
import 'package:flutter_whatsapp/themes/colors_theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'modules/home/home_screen_binding.dart';

void main() async{
  await GetStorage.init();   // storage initialization
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsAppClone',
      theme: ThemeColor().themeData,
      home: HomeScreen(),
      initialBinding: HomeBinding(),
      getPages: AppPages.pages,
    );
  }
}
