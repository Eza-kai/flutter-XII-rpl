import 'package:belajar_flutter/container/dua.dart';
import 'package:flutter/material.dart';
import 'package:belajar_flutter/main.layout.dart';

class ContainerLat extends StatelessWidget {
  const ContainerLat({super.key});

  BoxDecoration boxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      gradient: LinearGradient(
        colors: [
          Colors.blueAccent,
          Colors.blueGrey,
          Colors.tealAccent,
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      ),
      boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Tiga',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(        
          borderRadius: BorderRadius.circular(13),
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.blueGrey, Colors.tealAccent],
          )
        ),
        child: Container(
          margin: EdgeInsets.all(48),
          decoration: boxDecoration(),
          child: Container(
            margin: EdgeInsets.all(72),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              gradient: LinearGradient(
                colors: [Colors.pinkAccent, Colors.black, Colors.tealAccent],
              ),
              boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)],              
            ),
            child: Center(
              child: ElevatedButton(
                child: Text('Pindah Ke Halaman 2'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContainerDua()),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
