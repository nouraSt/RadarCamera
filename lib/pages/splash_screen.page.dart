import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/constants.dart';
import 'package:radarcam_app/pages/termsofuse_screen.page.dart';
import 'package:radarcam_app/widgets/circular_prog.widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TermsOfUse()),
            ));
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:colorbtn,
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
          top:450,
          left: 170,
          right: 170,
          child: CustomCircular())

        ],
      ),
    );
  }
}