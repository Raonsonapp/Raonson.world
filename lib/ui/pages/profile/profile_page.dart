import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          const CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage("https://picsum.photos/900"),
          ),
          const SizedBox(height: 10),
          const Text(
            "ehson_raonson",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text("Раонсон — Барномаи беҳтарин!"),
          const SizedBox(height: 20),

          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                30,
                (i) => Image.network(
                  "https://picsum.photos/id/${i + 40}/300",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
