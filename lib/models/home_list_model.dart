class HomeListModel {
  int id;
  String title;
  String description;
  String image;

  HomeListModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.image});

  factory HomeListModel.fromMap(Map<String, dynamic> json) => HomeListModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image']);
}
