// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:belajar_flutter/main.layout.dart';
import 'package:flutter/material.dart';

class RowNColumn extends StatelessWidget {
  const RowNColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan Row N Column', 
      body: Center(
        child: Container(
          height: 80,
          width: double.infinity,

          color: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.call), Text('Call')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.navigation), Text('Route')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.share), Text('Share')],
              ),
            ],
          ),
        ),
      )
      );
  }
}