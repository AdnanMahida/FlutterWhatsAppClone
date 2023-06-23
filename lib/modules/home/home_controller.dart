import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/chat_model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../models/home_list_model.dart';

class HomeController extends GetxController {
  // HomeApi homeApi = HomeApi();
  late TabController tabController;

  List<ChatModel> chatList = [
    ChatModel(
      id: 1,
      title: 'John Doe',
      message: 'Hello',
      iconUrl:
          'https://img.freepik.com/foto-gratis/retrato-joven-sonriente-gafas_171337-4842.jpg',
      lastMessage: '2:00 PM',
    ),
    ChatModel(
      id: 2,
      title: 'Mark Doe',
      message: 'How are you?',
      iconUrl:
          'https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1817367890.jpg',
      lastMessage: '2:00 PM',
    )
  ];

  List<HomeListModel> homeList = [];
  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    // fetchHomeList();
    // setStaticData();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void setStaticData() {
    homeList.add(HomeListModel(
        id: 1,
        title: 'Home',
        image: 'assets/images/home.png',
        description: 'Home Screen'));
    homeList.add(HomeListModel(
        id: 2,
        title: 'Setting',
        image: 'assets/images/setting.png',
        description: 'Setting Screen'));
    isLoading = false;
    update();
  }

/*
void fetchHomeList() async {
    var response = await homeApi.getHomeList();
    if(response != null){
      response['results'].forEach((data) {
        homeList.add(HomeListModel.fromMap(data));
      });
      isLoading = false;
      update();
    }
  }
*/
}
