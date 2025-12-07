class UserModel {
  final String uid;
  final String username;
  final String avatar;
  final bool verified;

  UserModel({
    required this.uid,
    required this.username,
    required this.avatar,
    required this.verified,
  });

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "username": username,
        "avatar": avatar,
        "verified": verified
      };
}
