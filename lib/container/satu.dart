import 'package:flutter/material.dart';
import 'package:belajar_flutter/main.layout.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Satu',
      body: Container(
        width: 199,
        height: 100,
        margin: EdgeInsets.all(10),
        color: Colors.blue,
        child: Center(child: Text("Hello Iyus")),
      ),
    );
  }
}
