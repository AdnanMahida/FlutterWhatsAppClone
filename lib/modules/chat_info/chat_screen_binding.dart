import 'package:flutter_whatsapp/modules/chat/chat_info_controller.dart';
import 'package:get/get.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatInfoController());
  }
}
