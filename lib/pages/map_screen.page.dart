
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/widgets/bottom_nav.widget.dart';
import 'package:radarcam_app/widgets/floating-btn.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
      bottomNavigationBar: MyNavigationBar() ,
    );
  }
}