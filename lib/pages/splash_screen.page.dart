import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 77, 7),
      body: Stack(
        alignment: Alignment.center,
        children: [
        Container(alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        
        ),
        Positioned(
          top: 90,
          left: 129,
          right: 129,
          child: Image.asset('assets/images/group.png',width: 120,height: 140 ,)),
        Positioned(
          top: 500,
          left: 170,
          right: 170,
          child: Image.asset('assets/images/icon.png',width: 65,height: 65 ,)),  

        ],
      ),
    );
  }
}