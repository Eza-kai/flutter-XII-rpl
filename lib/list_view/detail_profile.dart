import 'package:flutter/material.dart';

class DetailProfileScreen extends StatelessWidget {
  final String nama;
  final int points;
  final String image;
  final String bio;
  final String level;
  final String zodiak;

  const DetailProfileScreen({
    super.key,
    required this.nama,
    required this.points,
    required this.image,
    required this.bio,
    required this.level,
    required this.zodiak,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      appBar: AppBar(
        title: const Text("Detail Profil"),
        centerTitle: true,
        backgroundColor: const Color(0xFF03A9F4),
        foregroundColor: Colors.white,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(height: 20),
            Text(
              nama,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0277BD),
              ),
            ),
            const SizedBox(height: 20),
            // Points
            ListTile(
              leading: const Icon(Icons.star, color: Colors.orange),
              title: Text(
                "Points: $points",
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
            // Level
            ListTile(
              leading: const Icon(Icons.military_tech, color: Colors.brown),
              title: Text(
                "Level: $level",
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
            // Zodiak
            ListTile(
              leading: const Icon(Icons.auto_awesome, color: Colors.purple),
              title: Text(
                "Zodiak: $zodiak",
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 10),
            // Bio Box
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.person, color: Colors.blue),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Bio: $bio",
                      style: const TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
