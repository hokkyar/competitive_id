//ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

// utilities
import 'package:flutter/material.dart';
import '../../../assets/app_color.dart';

class BuatLomba extends StatefulWidget {
  @override
  State<BuatLomba> createState() => _BuatLombaState();
}

class _BuatLombaState extends State<BuatLomba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Buat Lomba'), backgroundColor: AppColor.color),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          // Judul
          SizedBox(height: 15),
          Text(
            'Buat Lomba',
            textAlign: TextAlign.center,
            style:
                TextStyle(fontSize: 23, fontWeight: FontWeight.w800, shadows: [
              Shadow(
                blurRadius: 1,
                offset: Offset(1, 1),
                color: Colors.grey,
              ),
            ]),
          ),
          SizedBox(height: 15),

          // Nama Lomba
          TextField(
            decoration: InputDecoration(
              labelText: 'Nama Lomba',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),

          // Kategori Lomba
          TextField(
            decoration: InputDecoration(
              labelText: 'Kategori Lomba',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),

          // Pelaksanaan
          TextField(
            decoration: InputDecoration(
              labelText: 'Pelaksanaan',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),

          // Tempat
          TextField(
            decoration: InputDecoration(
              labelText: 'Tempat',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),

          // Total Hadiah
          TextField(
            decoration: InputDecoration(
              labelText: 'Total Hadiah',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),

          // Syarat & Ketentuan
          TextField(
            maxLines: 2,
            decoration: InputDecoration(
              labelText: 'Syarat & Ketentuan',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),

          // tombol simpan
          ElevatedButton(
            onPressed: () {},
            child: Text('Simpan'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(18),
              primary: AppColor.color,
            ),
          ),
        ],
      ),
    );
  }
}
