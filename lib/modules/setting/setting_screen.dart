import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'setting_controller.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                title: const Text('Settings',
                    style: TextStyle(fontFamily: 'Poppins')),
                elevation: 0,
                leading: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back)),
                actions: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search))
                ],
              ),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 80,
                      width: Get.width,
                      child: Row(
                        children: [
                          CircleAvatar(
                            foregroundColor: Theme.of(context).primaryColor,
                            backgroundColor: Colors.grey,
                            backgroundImage: const NetworkImage(
                                "https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1817367890.jpg"),
                          ),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ad",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                Text(
                                  "Hey there! I am using WhatsApp.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.qr_code),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 10.0,
                    thickness: 1,
                    color: Colors.grey,
                  )
                ],
              ),
            ));
  }
}
