import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/colors_theme.dart';
import 'chat_controller.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatController>(
      builder: (controller) => Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFECE5DD),
            title: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  child: Image.asset('assets/images/user.png'),
                ),
                const SizedBox(width: 8),
                const Text('User')
              ],
            ),
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
