import 'package:belajar_flutter/main.layout.dart';
import 'package:flutter/material.dart';

class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Column Satu',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Widget Text Satu'),
          Text('Widget Text Dua'),
          Text('Widget Text Tiga'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Row Widget Satu'),
              Text('Row Widget Dua'),
              Text('Row Widget Tiga'),
            ],
          )
        ],
      )
      );
  }
}