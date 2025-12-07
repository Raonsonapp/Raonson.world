import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReelsScreen extends StatefulWidget {
  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  PageController pageController = PageController();
  List<String> videoUrls = [];

  @override
  void initState() {
    super.initState();
    loadVideos();
  }

  void loadVideos() async {
    QuerySnapshot snap =
        await FirebaseFirestore.instance.collection("reels").get();

    setState(() {
      videoUrls = snap.docs.map((e) => e["videoUrl"] as String).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.vertical,
        itemCount: videoUrls.length,
        itemBuilder: (context, index) {
          return ReelPlayer(url: videoUrls[index]);
        },
      ),
    );
  }
}

class ReelPlayer extends StatefulWidget {
  final String url;
  ReelPlayer({required this.url});

  @override
  State<ReelPlayer> createState() => _ReelPlayerState();
}

class _ReelPlayerState extends State<ReelPlayer> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        controller.play();
        controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (controller.value.isInitialized)
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: controller.value.size.width,
                height: controller.value.size.height,
                child: VideoPlayer(controller),
              ),
            ),
          ),
        Positioned(
            right: 10,
            bottom: 30,
            child: Column(
              children: [
                Icon(Icons.favorite, color: Colors.white, size: 40),
                SizedBox(height: 12),
                Icon(Icons.comment, color: Colors.white, size: 40),
                SizedBox(height: 12),
                Icon(Icons.share, color: Colors.white, size: 40),
              ],
            ))
      ],
    );
  }
}
