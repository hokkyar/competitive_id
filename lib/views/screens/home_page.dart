// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

// utilities
import 'package:flutter/material.dart';

// pages
import 'buat_lomba/buat_lomba.dart';
import 'info_lomba/info_lomba.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // Konten
      padding: EdgeInsets.all(15),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Selamat Datang
            Center(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Selamat Datang, ', style: TextStyle(fontSize: 19)),
                TextSpan(
                    text: 'Hokky!',
                    style: TextStyle(
                        color: Color.fromARGB(255, 22, 12, 82), fontSize: 19)),
              ])),
            ),
            // Akhir Selamat Datang

            SizedBox(height: 20),

            // Buat Lomba & Webinar
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Buat Lomba
                    BuatLombaItem(context),
                    // Akhir Buat Lomba
                    SizedBox(width: 20),
                    // Buat Webinar
                    BuatWebinarItem(context),
                    // Akhir Buat Webinar
                  ],
                ),
              ),
            ),
            // Akhir Buat Lomba & Webinar
            SizedBox(height: 30),
            // Info Lomba & Webinar
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Info Lomba
                    InfoLombaItem(context),
                    // Akhir Info Lomba
                    SizedBox(width: 20),
                    // Info Webinar
                    InfoWebinarItem(context),
                    // Akhir Info Webinar
                  ],
                ),
              ),
            ),
            // Akhir Info Lomba & Webinar
          ],
        ),
      ],
      // Akhir Konten
    );
  }

  InkWell InfoWebinarItem(BuildContext context) {
    return InkWell(
      onTap: () {
        Route route = MaterialPageRoute(builder: (context) => BuatLomba());
        Navigator.push(context, route);
      },
      child: Card(
        elevation: 3,
        child: Container(
          width: 170,
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              // Judul Card
              Text('Info Webinar IT'),
              // Akhir Judul Card

              SizedBox(height: 10),

              // Gambar Card
              Icon(
                Icons.web_stories,
                size: 90,
              ),
              // Akhir Gambar Card

              SizedBox(height: 10),

              // Keterangan Card
              Text(
                'Jelajahi berbagai info webinar IT di Indonesia',
                textAlign: TextAlign.center,
              ),
              // Akhir Keterangan Card
            ],
          ),
        ),
      ),
    );
  }

  InkWell InfoLombaItem(BuildContext context) {
    return InkWell(
      onTap: () {
        Route route = MaterialPageRoute(builder: (context) => InfoLomba());
        Navigator.push(context, route);
      },
      child: Card(
        elevation: 3,
        child: Container(
          width: 170,
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              // Judul Card
              Text('Info Lomba IT'),
              // Akhir Judul Card

              SizedBox(height: 10),

              // Gambar Card
              Icon(
                Icons.assessment_outlined,
                size: 90,
              ),
              // Akhir Gambar Card

              SizedBox(height: 10),

              // Keterangan Card
              Text(
                'Jelajahi berbagai info lomba IT di Indonesia',
                textAlign: TextAlign.center,
              ),
              // Akhir Keterangan Card
            ],
          ),
        ),
      ),
    );
  }

  InkWell BuatWebinarItem(BuildContext context) {
    return InkWell(
      onTap: () {
        Route route = MaterialPageRoute(builder: (context) => BuatLomba());
        Navigator.push(context, route);
      },
      child: Card(
        elevation: 3,
        child: Container(
          width: 170,
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              // Judul Card
              Text('Buat Webinar'),
              // Akhir Judul Card

              Padding(padding: EdgeInsets.symmetric(vertical: 5)),

              // Gambar Card
              Icon(
                Icons.villa,
                size: 90,
              ),
              // Akhir Gambar Card

              Padding(padding: EdgeInsets.symmetric(vertical: 5)),

              // Keterangan Card
              Text(
                'Buat webinar terbaru untuk seluruh Indonesia!',
                textAlign: TextAlign.center,
              ),
              // Akhir Keterangan Card
            ],
          ),
        ),
      ),
    );
  }

  InkWell BuatLombaItem(BuildContext context) {
    return InkWell(
      onTap: () {
        Route route = MaterialPageRoute(builder: (context) => BuatLomba());
        Navigator.push(context, route);
      },
      child: Card(
        elevation: 3,
        child: Container(
          width: 170,
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              // Judul Card
              Text('Buat Lomba'),
              // Akhir Judul Card

              SizedBox(height: 10),

              // Gambar Card
              Icon(
                Icons.menu_book,
                size: 90,
              ),
              // Akhir Gambar Card

              SizedBox(height: 10),

              // Keterangan Card
              Text(
                'Buatlah lomba IT untuk seluruh Indonesia!',
                textAlign: TextAlign.center,
              ),
              // Akhir Keterangan Card
            ],
          ),
        ),
      ),
    );
  }
}
