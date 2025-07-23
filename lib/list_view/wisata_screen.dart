import 'package:belajar_flutter/list_view/detail_wisata_screen.dart';
import 'package:flutter/material.dart';

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});

  //
  final List<Map<String, dynamic>> SenjaDago = [
    {
      "nama": "Cafe Senja Dago",
      "kota": "Bandung - Dago",
      "image": "images/Senjangan.jpg",
      "desc": "Salah Satu Cafe Dengan View Terbaik DI Dago",
    },
    {
      "nama": "Cafe Dago Atas",
      "kota": "Bandung - Dago",
      "image": "images/SENJA.jpg",
      "desc": "Salah Satu Cafe Dengan View Terbaik DI Dago",
    },
    {
      "nama": "Dago Hills Cafe",
      "kota": "Bandung - Dago",
      "image": "images/BANDUNG.jpg",
      "desc": "Salah Satu Cafe Dengan View Terbaik DI Dago",
    },
    {
      "nama": "Nyenja Duls",
      "kota": "Bandung - Dago",
      "image": "images/ROOFTOP.jpg",
      "desc": "Salah Satu Cafe Dengan View Terbaik DI Dago",
    },
    {
      "nama": "Anak Senja",
      "kota": "Bandung - Dago",
      "image": "images/Mantap.jpg",
      "desc": "Salah Satu Cafe Dengan View Terbaik DI Dago",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.pink, Colors.orangeAccent],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: ListView.builder(
        itemCount: SenjaDago.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: 
                    (context) => DetailWisataScreen(
                      nama: SenjaDago[index]["nama"],
                      kota: SenjaDago[index]["kota"],
                      image: SenjaDago[index]["image"],
                      desc: SenjaDago[index]["desc"],                  
                    ),
                  )
              );
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              height: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${SenjaDago[index]["image"]}"),
                    fit: BoxFit.cover,
                  )),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Text(
                  "${SenjaDago[index]["nama"]} - ${SenjaDago[index]["kota"]}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    ));
  }
}
