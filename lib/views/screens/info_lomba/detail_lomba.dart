// ignore_for_file: prefer_const_constructors

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
    );
  }
}
