import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/constants.dart';
import 'package:radarcam_app/widgets/ad.widget.dart';
import 'package:radarcam_app/widgets/bar_item.widget.dart';
import 'package:radarcam_app/widgets/camera_card.widget.dart';

import '../widgets/bottom_nav.widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: colorback,
      body: SingleChildScrollView(
        child: Stack(alignment: Alignment.center,
          children: [
                 Container(child: Padding(padding: EdgeInsets.all(20), child: Text('Terms of use',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20), )),
                  color: colorbtn,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      child:Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        child: Column(
                           
                          children: [
                            CamerCard(),
                            SizedBox(height: 20,),
                            ItemBar('Share App'),
                            SizedBox(height: 20,),
                            ItemBar('Rate App'),
                            SizedBox(height: 20,),
                            ItemBar('My reports'),
                            SizedBox(height: 20,),
                            ItemBar('privacy policy'),
                            SizedBox(height: 20,),
                            AdContainer()
      
                        ]),
                      ),
                    ) ,
                    decoration: BoxDecoration( color: colorback,borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),topRight: Radius.circular(20)
                    ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height-120),
            
                  ),
      
           
          ],
        ),
      ),
      
    );
  }
}