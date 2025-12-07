class UserModel {
  final String id;
  final String name;
  final String avatar;
  final bool verified;

  UserModel({
    required this.id,
    required this.name,
    required this.avatar,
    this.verified = false,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      name: json["name"],
      avatar: json["avatar"],
      verified: json["verified"] ?? false,
    );
  }
}
