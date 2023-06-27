import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../themes/colors_theme.dart';
import '../home_controller.dart';

CommunityScreen(HomeController controller) {
  return GetBuilder<HomeController>(
      builder: (controller) => ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      //add border radius here
                      child: Image.asset(
                        Icons.groups as String,
                        fit: BoxFit.cover,
                      ), //add image location here
                    ),
                    const Positioned(
                      right: 0.0,
                      bottom: 0.0,
                      child: CircleAvatar(
                        radius: 10.0,
                        backgroundColor: ThemeColor.primaryGreen,
                        child: Icon(
                          Icons.add,
                          size: 20.0,
                          color: ThemeColor.white,
                        ),
                      ),
                    ),
                  ],
                ),
                title: const Text('New Community'),
              );
              /* return Column(
            children: [
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
              ),
              const Divider(
                height: 10.0,
              ),
            ],
          );*/
            },
          ));
}
