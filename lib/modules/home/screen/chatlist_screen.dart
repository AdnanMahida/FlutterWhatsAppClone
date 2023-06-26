import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/routes/app_routes.dart';
import 'package:get/get.dart';

import '../home_controller.dart';

ChatListScreen() {
  return GetBuilder<HomeController>(
      builder: (controller) => ListView.builder(
            itemCount: controller.chatList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  const Divider(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Colors.grey,
                      backgroundImage:
                          NetworkImage(controller.chatList[index].iconUrl),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          controller.chatList[index].title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          controller.chatList[index].lastMessage,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 14.0),
                        ),
                      ],
                    ),
                    subtitle: Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        controller.chatList[index].time,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 15.0),
                      ),
                    ),
                    onTap: () {
                      controller.chatList[index].isGroup
                          ? Get.toNamed('/groupchat')
                          : Get.toNamed(AppRoutes.chatScreen);
                    },
                  ),
                ],
              );
            },
          ));
}
