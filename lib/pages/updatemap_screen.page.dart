import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/constants.dart';
import 'package:radarcam_app/pages/hazard_screen.page.dart';
import 'package:radarcam_app/pages/police_screen.page.dart';
import 'package:radarcam_app/pages/reportcam_screen.page.dart';
import 'package:radarcam_app/pages/repport_traffic.screen.dart';
import 'package:radarcam_app/widgets/ad.widget.dart';
import 'package:radarcam_app/widgets/bottom_nav.widget.dart';
import 'package:radarcam_app/widgets/circular_item.widget.dart';

class UpdateTheMap extends StatelessWidget {
  const UpdateTheMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: colorback,
      body: Stack(alignment: Alignment.center,
        children: [
               Container(child: Padding(padding: EdgeInsets.all(20), child: Text('Update the map',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20), )),
                color: colorbtn,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height),
                Positioned(
                  bottom: 0,
                  child: Container(
                    child:Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      alignment: Alignment.center,
                      child: 
                         SingleChildScrollView(
                          child: Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              TextButton(onPressed: (){
                                Navigator.push(
                                   context,
                                 MaterialPageRoute(builder: (context) => const ReportTrafficScreen()),
                                    );
                              },
                                child: CircularItem('assets/images/image32.png','Traffic')),
                                SizedBox(height: 10,),
                              TextButton(onPressed: (){
                                Navigator.push(
                              context,
                             MaterialPageRoute(builder: (context) => const PoliceScreen()),
                                  );
                              },
                                child: CircularItem('assets/images/image33.png','Police')),
                            ],),
                            SizedBox(height:50,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              TextButton(onPressed: (){
                                  Navigator.push(
                                  context,
                              MaterialPageRoute(builder: (context) => const MapPageReport()),
                                );
                              },
                                child: CircularItem('assets/images/image35.png','Speed camera')),
                                SizedBox(height: 10,),
                              TextButton(onPressed: (){
                                Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const HazardScreen()),
                              );
                              },
                                child: CircularItem('assets/images/image36.png','Hazard')),
                            ],),
                            SizedBox(height:50,),
                            AdContainer()
                          ]),
                        ),
                      ),
                    ),
                  
                  decoration: BoxDecoration( color: colorback,borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),topRight: Radius.circular(20)
                  ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height-130),
          
                ),

         
        ],
      ),
    );
  }
}