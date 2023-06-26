import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/modules/home/screen/calls_screen.dart';
import 'package:flutter_whatsapp/modules/home/screen/chat_screen.dart';
import 'package:flutter_whatsapp/modules/home/screen/community_screen.dart';
import 'package:flutter_whatsapp/modules/home/screen/status_screen.dart';
import 'package:flutter_whatsapp/routes/app_routes.dart';
import 'package:flutter_whatsapp/themes/colors_theme.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyTabController tabController = Get.put(MyTabController());

    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                title: const Text('WhatsApp Clone'),
                elevation: 0.7,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.camera_alt_outlined),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.search_outlined),
                    onPressed: () => {},
                  ),
                  PopupMenuButton(itemBuilder: (context) {
                    return [
                      const PopupMenuItem<int>(
                        value: 0,
                        child: Text("New group"),
                      ),
                      const PopupMenuItem<int>(
                        value: 1,
                        child: Text("New Broadcast"),
                      ),
                      const PopupMenuItem<int>(
                        value: 2,
                        child: Text("Linked devices"),
                      ),
                      const PopupMenuItem<int>(
                        value: 3,
                        child: Text("Starred messages"),
                      ),
                      const PopupMenuItem<int>(
                        value: 4,
                        child: Text("Payments"),
                      ),
                      const PopupMenuItem<int>(
                        value: 5,
                        child: Text("Settings"),
                      ),
                    ];
                  }, onSelected: (value) {
                    if (value == 0) {
                      print("New group menu is selected.");
                    } else if (value == 1) {
                      print("New Broadcast menu is selected.");
                    } else if (value == 2) {
                      print("Linked devices menu is selected.");
                    } else if (value == 3) {
                      print("Starred message menu is selected.");
                    } else if (value == 4) {
                      print("Payment menu is selected.");
                    } else if (value == 5) {
                      Get.toNamed(AppRoutes.settingScreen);
                    }
                  }),
                ],
                bottom: TabBar(
                  controller: tabController.controller,
                  indicatorColor: Colors.white,
                  tabs: tabController.myTabs,
                ),
              ),
              body: TabBarView(
                controller: tabController.controller,
                children: [
                  CommunityScreen(controller),
                  ChatListScreen(),
                  StatusScreen(controller),
                  CallScreen(controller)
                ],
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: ThemeColor.primaryGreen,
                child: const Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                onPressed: () => {},
              ),
            ));
  }
}

class MyTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    const Tab(icon: Icon(Icons.groups)),
    const Tab(text: 'Chats'),
    const Tab(text: 'Status'),
    const Tab(text: 'Calls'),
  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller =
        TabController(vsync: this, initialIndex: 1, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
