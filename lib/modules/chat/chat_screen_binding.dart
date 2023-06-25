import 'package:flutter_whatsapp/modules/chat/chat_controller.dart';
import 'package:flutter_whatsapp/modules/setting/setting_controller.dart';
import 'package:get/get.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController());
  }
}
