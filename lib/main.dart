import 'package:flutter/material.dart';
import 'package:radarcam_app/pages/map_screen.page.dart';
import 'package:radarcam_app/pages/police_screen.page.dart';
import 'package:radarcam_app/pages/settings_screen.dart';
import 'package:radarcam_app/pages/splash_screen.page.dart';
import 'package:radarcam_app/pages/termsofuse_screen.page.dart';
import 'package:radarcam_app/pages/updatemap_screen.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'RadarCamera',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        primaryColor: const Color(0xE5E5E5),
        primarySwatch: Colors.blue,
      ),
      
      home: PoliceScreen(),
    );
  }
}

