class ReelModel {
  final String videoUrl;
  final String caption;
  final String uid;

  ReelModel({
    required this.videoUrl,
    required this.caption,
    required this.uid,
  });

  Map<String, dynamic> toJson() =>
      {"videoUrl": videoUrl, "caption": caption, "uid": uid};
}
