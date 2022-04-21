// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

// utilities
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../assets/app_color.dart';

// pages
import 'faq_page.dart';
import 'home_page.dart';
import 'setting_page.dart';
import 'profile_page.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Color _primaryColor = Color.fromARGB(255, 31, 69, 144);
  var _iconMode = Icons.dark_mode;

  int _selectedBar = 1;
  final List screens = [
    FaqPage(),
    HomePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Awal Header
      appBar: AppBar(
        backgroundColor: AppColor.color,
        title: Text(
          'Competitive ID',
          style: TextStyle(fontSize: 19),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => ProfilePage());
              Navigator.push(context, route);
            },
            icon: Icon(
              Icons.account_circle,
              size: 35,
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      // Akhir Header

      // Sidebar Menu
      drawer: Container(
        width: 350,
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  otherAccountsPictures: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (AppColor.color ==
                              Color.fromARGB(255, 31, 69, 144)) {
                            AppColor.color = Color.fromARGB(255, 53, 53, 53);
                            _iconMode = Icons.light_mode;
                          } else {
                            AppColor.color = Color.fromARGB(255, 31, 69, 144);
                            _iconMode = Icons.dark_mode;
                          }
                        });
                      },
                      child: Icon(
                        _iconMode,
                        color: Colors.white,
                        size: 23,
                      ),
                    ),
                  ],
                  decoration: BoxDecoration(
                    color: AppColor.color,
                  ),
                  currentAccountPicture: Icon(
                    Icons.account_circle_rounded,
                    size: 80,
                    color: Colors.white,
                  ),
                  accountName: Text('Komang Hokky Aryasta'),
                  accountEmail: Text(
                    'Universitas Pendidikan Ganesha',
                    style: TextStyle(fontSize: 13),
                  )),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Text(
                  'List Lomba',
                  style: TextStyle(
                    color: Color.fromARGB(255, 133, 133, 133),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              // Lomba Anda
              ExpansionTile(
                leading: Icon(
                  Icons.collections_bookmark,
                  size: 20,
                ),
                title: Text('Lomba Anda'),
                children: [
                  Text(
                    'Anda belum memiliki lomba',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
                childrenPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              // Akhir Lomba Anda

              // Lomba Yang Diikuti
              ExpansionTile(
                leading: Icon(
                  Icons.my_library_books_outlined,
                  size: 20,
                ),
                title: Text('Lomba Yang Diikuti'),
                children: [
                  Text(
                    'Anda belum mengikuti lomba',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
                childrenPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              // Akhir Lomba Yang Diikuti

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Text(
                  'List Webinar',
                  style: TextStyle(
                    color: Color.fromARGB(255, 133, 133, 133),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              // Webinar Anda
              ExpansionTile(
                leading: Icon(
                  Icons.video_camera_back,
                  size: 20,
                ),
                title: Text('Webinar Anda'),
                children: [
                  Text(
                    'Anda belum memiliki webinar',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
                childrenPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              // Akhir Webinar Anda

              // Webinar Yang Diikuti
              ExpansionTile(
                leading: Icon(
                  Icons.video_camera_front,
                  size: 20,
                ),
                title: Text('Webinar Yang Diikuti'),
                children: [
                  Text(
                    'Anda belum mengikuti webinar',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
                childrenPadding: EdgeInsets.symmetric(vertical: 10),
              ),
              // Akhir Webinar Yang Diikuti

              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 100),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Terjadi Masalah? ',
                          style: TextStyle(fontSize: 13),
                        ),
                        TextSpan(
                          text: 'Laporkan!',
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          style: TextStyle(color: Colors.blue, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Akhir Sidebar Menu

      // Halaman Utama
      body: screens[_selectedBar],

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'FAQ'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
        currentIndex:
            _selectedBar, // halaman yang dibuka (index dimulai dari 0)
        onTap: (index) => setState(() => _selectedBar = index),
        backgroundColor: AppColor.color,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        // showSelectedLabels: true,
        showUnselectedLabels: false,
        iconSize: 28,
      ),
      // Akhir Bottom Navigation

      // Akhir Halaman Utama
    );
  }
}
