import 'package:flutter/material.dart';
import 'package:belajar_flutter/main.layout.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Naoka Ueno',
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 30),

              // Judul
              const Text(
                'Cewe My Favorit Gue 😹',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Gambar Atas (lebar)
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://www.risamedia.com/content/images/wordpress/2017/07/website_ueno_naoka-1.jpg',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              // Dua Gambar Berdampingan (portrait)
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2rLKj5X8tfLO7X2tHzUtkO_LS1oy5Rvw15Q&s',
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://pbs.twimg.com/media/FAgg7wDUcAAFUz1.jpg',
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Tiga Gambar Bawah Berdampingan
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://64.media.tumblr.com/b0fa56b4dd93011a466ad733b15d8ffe/tumblr_prt0nrFHiK1wcxiqr_500.gif',
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://64.media.tumblr.com/729a84e2a007c51fc3e28f8bbd820e75/ab02511850348acf-a3/s540x810/d801da00faf980ca0d45bdf1fd20c0fbd42d7ad0.gif',
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://64.media.tumblr.com/7e38e2205b17db69f78c22d061db5507/tumblr_oqcsy60V3c1u1uafro2_640.gifv',
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
