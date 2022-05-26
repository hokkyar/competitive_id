//ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

// utilities
import 'package:flutter/material.dart';
import '../../../assets/app_color.dart';

class MaintenanceScreen extends StatefulWidget {
  @override
  State<MaintenanceScreen> createState() => _MaintenanceScreenState();
}

class _MaintenanceScreenState extends State<MaintenanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Tahap Pengembangan'), backgroundColor: AppColor.color),
      body: Center(
        child: Text('Fitur Belum Tersedia...'),
      ),
    );
  }
}
