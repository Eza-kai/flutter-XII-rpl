import 'package:belajar_flutter/main.layout.dart';
import 'package:flutter/material.dart';

class ListViewTiga extends StatelessWidget {
  ListViewTiga({super.key});

  // data
  final List<Color> colorList = [Colors.red, Colors.green, Colors.blue,];
  final List<String> partaiList = [
    'Partai Kiyus',
    'Partai Jayus',
    'Partai Makyus',    
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List Partai Mas Iyus',
      body: SizedBox(
        width: double.infinity,
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 200,
              color: colorList[index],
              child: Center(child: Text(partaiList[index])),
            );
          },
        ),
      ),
    );
  }
}
