import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/colors_theme.dart';
import 'setting_controller.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                backgroundColor: ThemeColor.white,
                title: const Text('Setting',
                    style: TextStyle(
                        color: ThemeColor.primaryBlack, fontFamily: 'Poppins')),
                elevation: 0,
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search,
                          color: ThemeColor.primaryBlack))
                ],
              ),
              body: Container(),
            ));
  }
}
