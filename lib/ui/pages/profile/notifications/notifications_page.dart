import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("laylo liked your photo"),
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text("amir started following you"),
          ),
        ],
      ),
    );
  }
}
