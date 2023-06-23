class ChatModel {
  int id;
  String title;
  String message;
  String iconUrl;
  String lastMessage;
  String time = DateTime.now().toString();

  ChatModel({
    required this.id,
    required this.title,
    required this.message,
    required this.iconUrl,
    required this.lastMessage,
  });
}
