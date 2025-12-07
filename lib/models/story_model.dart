class StoryModel {
  final String image;
  final String uid;
  final String username;

  StoryModel({
    required this.image,
    required this.uid,
    required this.username,
  });

  Map<String, dynamic> toJson() =>
      {"image": image, "uid": uid, "username": username};
}
