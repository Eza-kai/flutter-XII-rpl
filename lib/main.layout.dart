import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final String title;
  final Widget body;

  const MainLayout({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellowAccent, // opsional: ganti warna AppBar
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black, // Ganti warna teks judul
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black), // warna ikon (jika ada)
      ),
      body: body,
    );
  }
}
