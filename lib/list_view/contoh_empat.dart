import 'package:belajar_flutter/main.layout.dart';
import 'package:flutter/material.dart';

class ListItem {
  final Color color;
  final String text;

  ListItem(this.color, this.text);
}

class ListViewEmpat extends StatelessWidget {
  ListViewEmpat({super.key});

  final List<ListItem> itemList = [
    ListItem(Colors.red, 'Partai Kotong'),
    ListItem(Colors.green, 'Partai Koting'),
    ListItem(Colors.blue, 'Partai Kantong'),
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List Separate',
      body: SizedBox(
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(color: Colors.black);
          },
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              width: 199,
              height: 100,
              color: itemList[index].color,
              child: Center(child: Text(itemList[index].text)),
            );
          },
          itemCount: itemList.length,
        ),
      ),
    );
  }
}
