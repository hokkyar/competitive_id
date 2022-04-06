//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              // Judul Setting
              Text(
                'Setting',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    shadows: [
                      Shadow(
                        blurRadius: 1,
                        offset: Offset(1, 1),
                        color: Colors.grey,
                      ),
                    ]),
              ),
              // Akhir Judul Setting
              SizedBox(height: 50),

              // Setting
              Card(
                elevation: 3,
                child: ExpansionTile(
                  title: Text(
                    'Pengaturan Akun',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 82, 81, 81)),
                  ),
                  children: [
                    Text(
                      'Coming Soon...',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                  childrenPadding: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
              Card(
                elevation: 3,
                child: ExpansionTile(
                  title: Text(
                    'Pilih Bahasa',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 82, 81, 81)),
                  ),
                  children: [
                    Text(
                      'Coming Soon...',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                  childrenPadding: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
              Card(
                elevation: 3,
                child: ExpansionTile(
                  title: Text(
                    'Notifikasi',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 82, 81, 81)),
                  ),
                  children: [
                    Text(
                      'Coming Soon...',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                  childrenPadding: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
              Card(
                elevation: 3,
                child: ExpansionTile(
                  title: Text(
                    'Tentang',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 82, 81, 81)),
                  ),
                  children: [
                    Text(
                      'Coming Soon...',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                  childrenPadding: EdgeInsets.symmetric(vertical: 10),
                ),
              ),
              // Akhir Setting

              SizedBox(height: 50),
              // Tombol Logout
              ElevatedButton(
                onPressed: () {},
                child: Text('LOG OUT'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 253, 29, 13),
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                ),
              ),
              // Akhir Tombol Logout
              SizedBox(height: 35),

              Text(
                'Version 1.0',
                style: TextStyle(shadows: [
                  Shadow(
                    blurRadius: 1,
                    offset: Offset(1, 2),
                    color: Colors.grey,
                  )
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
