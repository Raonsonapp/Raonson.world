import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'story_viewer.dart';

class StoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("stories").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return SizedBox();
          var docs = snapshot.data!.docs;

          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: docs.length,
            itemBuilder: (context, index) {
              var data = docs[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              StoryViewer(imageUrl: data["image"])));
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 70,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage(data["image"]),
                      ),
                      SizedBox(height: 5),
                      Text(data["username"],
                          style: TextStyle(color: Colors.white, fontSize: 12))
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
