import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/modules/welcome/welcome_controller.dart';
import 'package:get/get.dart';

import '../../themes/colors_theme.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      builder: (controller) => Scaffold(
          appBar: AppBar(
            backgroundColor: ThemeColor.white,
            title: const Text('Welcome',
                style: TextStyle(
                    color: ThemeColor.primaryBlack, fontFamily: 'Poppins')),
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.search, color: ThemeColor.primaryBlack))
            ],
          ),
          body: const Center(child: CircularProgressIndicator())),
    );
  }
}
