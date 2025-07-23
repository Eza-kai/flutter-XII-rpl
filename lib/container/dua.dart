import 'package:belajar_flutter/container/satu.dart';
import 'package:belajar_flutter/main.layout.dart';
import 'package:flutter/material.dart';

class ContainerDua extends StatelessWidget {
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Dua',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.blueGrey, Colors.tealAccent,],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)]
        ),
        child: Center(
          child: ElevatedButton(
            child: Text('Pindah Ke Halaman 1'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerSatu()
                )
              );
            }
          ),
        ),
      ),
    );
  }
}
