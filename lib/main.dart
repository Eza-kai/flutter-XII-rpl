// ignore_for_file: prefer_const_constructors

import 'package:belajar_flutter/belajar_form/form_screen.dart';
import 'package:belajar_flutter/container/lat.dart';
import 'package:belajar_flutter/list_view/contoh_dua.dart';
import 'package:belajar_flutter/list_view/contoh_empat.dart';
import 'package:belajar_flutter/list_view/contoh_satu.dart';
import 'package:belajar_flutter/list_view/contoh_tiga.dart';
import 'package:belajar_flutter/list_view/detail_wisata_screen.dart';
import 'package:belajar_flutter/list_view/latihan_satu.dart';
import 'package:belajar_flutter/list_view/wisata_screen.dart';
import 'package:belajar_flutter/row_column/column_satu.dart';
import 'package:belajar_flutter/row_column/latihan_satu.dart';
import 'package:belajar_flutter/row_column/row_column.dart';
import 'package:belajar_flutter/row_column/row_satu.dart';
import 'package:flutter/material.dart';
import 'package:belajar_flutter/container/satu.dart';
import 'package:belajar_flutter/container/dua.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BelajarForm());
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: Text('Belajar Flutter'),
      ),
      body: Center(
        child: Text(
          'Hello IYUS',
          style: TextStyle(
            backgroundColor: Colors.blueAccent,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
