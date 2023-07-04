import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/colors_theme.dart';
import 'chat_info_controller.dart';

class ChatInfoScreen extends StatelessWidget {
  const ChatInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatInfoController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                title: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: -5,
                        top: 5,
                        child: CircleAvatar(
                          radius: 20,
                          child: Image.network(
                              '"https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1817367890.jpg"'),
                        ),
                      ),
                      const Positioned(
                        left: -5 + 20 * 2 + 8.0,
                        top: 5 + 20 / 2 - 5,
                        child: Text('Ad'),
                      ),
                    ],
                  ),
                ),
                elevation: 0,
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search,
                          color: ThemeColor.primaryBlack))
                ],
              ),
              body: Center(
                  child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                          itemCount: 5,
                          reverse: true,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                SizedBox(height: 8.0,)
                              ],
                            );
                          })),
                ],
              )),
            ));
  }
}
