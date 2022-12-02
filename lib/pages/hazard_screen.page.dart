import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/constants.dart';
import 'package:radarcam_app/widgets/icons_bar.widget.dart';

import '../widgets/btn.widget.dart';
import '../widgets/circular_item.widget.dart';
import '../widgets/rectangle_card.widget.dart';

class HazardScreen extends StatelessWidget {
  const HazardScreen({super.key});

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
                          CircularItem('assets/images/image32.png', 'Traffic'),
                          SizedBox(height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               RectangularCard('Moderate', 'assets/images/image32.png'),
                               SizedBox(width: 20,),
                               RectangularCard('Heavy', 'assets/images/image45.png'),
                          ],),
                          SizedBox(height: 20,),
                          CircularItem('assets/images/image44.png', 'StandStill'),
                          SizedBox(height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               
                          ],),
                          SizedBox(height: 10,),
                          IconBar(),
                          SizedBox(height: 10,),
                           Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               BtnWidget('later', Colors.transparent, Colors.white, Colors.black),
                               SizedBox(width: 20,),
                               BtnWidget('Report', Colors.transparent, colorbtn, Colors.white),
                          ],),
                        ]),
                      ),
                    ) ,
                    decoration: BoxDecoration( color: colorback,borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),topRight: Radius.circular(20)
                    ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height-100),
            
                  ),
      
           
          ],
        ),
      ),
    
    );
  }
}