//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              // Judul FAQ
              Text(
                'FAQ',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    shadows: [
                      Shadow(
                        blurRadius: 1,
                        offset: Offset(1, 2),
                        color: Colors.grey,
                      ),
                    ]),
              ),
              // Akhir Judul FAQ
              SizedBox(height: 50),

              // FAQ
              ExpansionTile(
                title: Text(
                  'Apa itu Competitive ID?',
                  style: TextStyle(fontSize: 14),
                ),
                children: [
                  Text(
                    'Coming Soon...',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
                childrenPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              ExpansionTile(
                title: Text(
                  'Bagaimana cara mendaftar?',
                  style: TextStyle(fontSize: 14),
                ),
                children: [
                  Text(
                    'Coming Soon...',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
                childrenPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              ExpansionTile(
                title: Text(
                  'Apakah SMA/SMK bisa mendaftar?',
                  style: TextStyle(fontSize: 14),
                ),
                children: [
                  Text(
                    'Coming Soon...',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
                childrenPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              ExpansionTile(
                title: Text(
                  'Apakah data profil bisa diganti?',
                  style: TextStyle(fontSize: 14),
                ),
                children: [
                  Text(
                    'Coming Soon...',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
                childrenPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              ExpansionTile(
                title: Text(
                  'Bagaimana cara mengikuti latihan soal?',
                  style: TextStyle(fontSize: 14),
                ),
                children: [
                  Text(
                    'Coming Soon...',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
                childrenPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              // Akhir FAQ

              // Butuh Bantuan
              SizedBox(height: 50),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Butuh Bantuan?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),

              // Akhir Butuh Bantuan
            ],
          ),
        ),
      ],
    );
  }
}
