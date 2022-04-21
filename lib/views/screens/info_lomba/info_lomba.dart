//ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

// utilities
import 'package:flutter/material.dart';
import '../../../assets/app_color.dart';

class InfoLomba extends StatefulWidget {
  @override
  State<InfoLomba> createState() => _InfoLombaState();
}

class _InfoLombaState extends State<InfoLomba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Info Lomba'), backgroundColor: AppColor.color),
      body: Center(child: Text('Info Lomba')),
    );
  }
}
