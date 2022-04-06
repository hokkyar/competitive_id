// ignore_for_file: prefer_const_constructors
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'widgets/faq_page.dart';
import 'widgets/home_page.dart';
import 'widgets/setting_page.dart';
import 'widgets/profile_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Competitive ID',
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _primaryColor = Color.fromARGB(255, 31, 69, 144);
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
        backgroundColor: _primaryColor,
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
                          if (_primaryColor ==
                              Color.fromARGB(255, 31, 69, 144)) {
                            _primaryColor = Color.fromARGB(255, 53, 53, 53);
                            _iconMode = Icons.light_mode;
                          } else {
                            _primaryColor = Color.fromARGB(255, 31, 69, 144);
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
                    color: _primaryColor,
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
        backgroundColor: _primaryColor,
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
