// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// utilities
import 'package:flutter/material.dart';
import '../../../assets/app_color.dart';

class DetailLomba extends StatelessWidget {
  const DetailLomba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Detail Lomba'), backgroundColor: AppColor.color),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // judul
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Coding Competition',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 2, 12, 2),
                          child: Text(
                            'Universitas Pendidikan Ganesha',
                            style: TextStyle(
                              color: Color.fromARGB(255, 136, 135, 135),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // logo
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.maps_home_work_outlined, size: 40),
                    ),
                    // garis pemisah
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  child: Divider(),
                ),

                // detail
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: [
                      Text('Pelaksanaan'),
                      SizedBox(width: 10),
                      Text(':'),
                      SizedBox(width: 10),
                      Text(
                        '20-22 April 2022',
                        style: TextStyle(
                          color: Color.fromARGB(255, 112, 5, 112),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: [
                      Text('Tempat'),
                      SizedBox(width: 41),
                      Text(':'),
                      SizedBox(width: 10),
                      Text(
                        'Online',
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 112, 41),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: [
                      Text('Kategori'),
                      SizedBox(width: 36),
                      Text(':'),
                      SizedBox(width: 10),
                      Text(
                        'Programming',
                        style: TextStyle(
                          color: Color.fromARGB(255, 112, 9, 5),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: [
                      Text('Pendaftar'),
                      SizedBox(width: 27),
                      Text(':'),
                      SizedBox(width: 10),
                      Text(
                        '30 Peserta',
                        style: TextStyle(
                          color: Color.fromARGB(255, 34, 5, 112),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: [
                      Text('Hadiah'),
                      SizedBox(width: 43),
                      Text(':'),
                      SizedBox(width: 10),
                      Text(
                        'Rp 15.000.000',
                        style: TextStyle(
                          color: Color.fromARGB(255, 112, 75, 5),
                        ),
                      ),
                    ],
                  ),
                ),

                // footer
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Syarat & Ketentuan',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),

                // syarat dan ketentuan
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('1. Follow IG @competitive_id.'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('2. Dilarang makan dan minum saat sedang lomba.'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                      '3. Ketentuan dapat berubah kapan saja sesuai situasi dan kondisi.'),
                ),

                // tombol daftar
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 23, horizontal: 12),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Daftar Sekarang'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(18),
                      primary: Color.fromARGB(255, 26, 163, 33),
                    ),
                  ),
                ),

                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
