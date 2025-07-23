import 'package:belajar_flutter/main.layout.dart';
import 'package:flutter/material.dart';

class RowSatu extends StatelessWidget {
  const RowSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Row',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Widget Satu'),
          Text('Widget Dua'),
          Text('Widget Tiga'),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text('Text 1')],
          )
        ],
      )
      );
  }
}