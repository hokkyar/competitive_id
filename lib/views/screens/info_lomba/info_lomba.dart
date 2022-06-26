//ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

// utilities
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../assets/app_color.dart';

// pages
import 'detail_lomba.dart';

class InfoLomba extends StatefulWidget {
  @override
  State<InfoLomba> createState() => _InfoLombaState();
}

class _InfoLombaState extends State<InfoLomba> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference lomba = FirebaseFirestore.instance.collection('lomba');
    return Scaffold(
      appBar:
          AppBar(title: Text('Info Lomba'), backgroundColor: AppColor.color),
      body: ListView(
        children: [
          // search-input
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  fillColor: Colors.white,
                  filled: true,
                  border:
                      OutlineInputBorder(borderSide: BorderSide(width: 0.8)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 0.8, color: AppColor.color)),
                  hintText: "Cari lomba",
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                  suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.clear,
                        size: 20,
                      ),
                      onPressed: () {
                        setState(() {
                          searchController.clear();
                        });
                      })),
            ),
          ),

          // konten
          Expanded(
            // child: StreamBuilder<QuerySnapshot>(
            //   stream: lomba.snapshots(),
            //   builder: (_, snapshot) {
            //     if (snapshot.hasData) {
            //       return Column(
            //         children: [],
            //       );
            //     } else {
            //       return CircularProgressIndicator();
            //     }
            //   },
            // ),

            child: ListView.builder(
              padding: EdgeInsets.all(18),
              itemCount: 5,
              itemBuilder: (contex, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: InkWell(
                    onTap: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => DetailLomba());
                      Navigator.push(context, route);
                    },
                    child: Card(
                      elevation: 3,
                      child: Container(
                        child: Column(
                          children: [
                            // header
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // judul dan nama penyelenggara
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 15, 15, 1),
                                      child: Text(
                                        'Coding Competition',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 5),
                                      child: Text(
                                        'Universitas Pendidikan Ganesha',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 136, 135, 135),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // logo
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  child: Icon(Icons.maps_home_work_outlined,
                                      size: 40),
                                ),
                              ],
                            ),

                            // garis pemisah
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              child: Divider(),
                            ),

                            // detail
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
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
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
