import 'package:belajar_flutter/main.layout.dart';
import 'package:belajar_flutter/list_view/detail_profile.dart';
import 'package:flutter/material.dart';

class LatihanProfile extends StatelessWidget {
  LatihanProfile({super.key});

  final List<Map<String, dynamic>> profileList = [
    {
      "nama": "Arona",
      "points": 3094,
      "image": "images/Arona.jpg",
      "bio": "Wanita Tangguh.",
      "level": "Bronze",
      "zodiak": "Aquarius"
    },
    {
      "nama": "Kuchinasi Yume",
      "points": 834,
      "image": "images/kuchinasi.jpg",
      "bio": "Pembuat Lagu Sunda.",
      "level": "Silver",
      "zodiak": "Leo"
    },
    {
      "nama": "Rikuchama Aru",
      "points": 1948,
      "image": "images/rikuchama.jpg",
      "bio": "Seorang Pria Dengan Sebilah Tombak Adalah Sebuah Benteng.",
      "level": "Titanium",
      "zodiak": "Capicorn"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE), // biru langit muda
      appBar: AppBar(
        title: const Text("List Orang-Orangan"),
        centerTitle: true,
        backgroundColor: const Color(0xFF03A9F4), // biru cerah
        foregroundColor: Colors.white,
        elevation: 4,
      ),
      body: ListView.builder(
        itemCount: profileList.length,
        itemBuilder: (context, index) {
          final orang = profileList[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.white,
            elevation: 5,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              leading: CircleAvatar(
                backgroundImage: AssetImage(orang["image"]),
                radius: 30,
              ),
              title: Text(
                orang["nama"],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF0277BD),
                ),
              ),
              subtitle: Text(
                "Points: ${orang["points"]}",
                style: const TextStyle(
                  color: Colors.black87,
                ),
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF03A9F4),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 2,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailProfileScreen(
                        nama: orang["nama"],
                        points: orang["points"],
                        image: orang["image"],
                        bio: orang["bio"],
                        level: orang["level"],
                        zodiak: orang["zodiak"],
                      ),
                    ),
                  );
                },
                child: const Text("Detail"),
              ),
            ),
          );
        },
      ),
    );
  }
}
