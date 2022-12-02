import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/constants.dart';
import 'package:radarcam_app/widgets/btn.widget.dart';
import 'package:radarcam_app/widgets/rectangle_card.widget.dart';

import '../widgets/circular_item.widget.dart';

class ReportTrafficScreen extends StatelessWidget {
  const ReportTrafficScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future nav=
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ReportTrafficScreen()),
  );
 
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
                      // ignore: sort_child_properties_last
                      child:Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        child: Column(
                           
                          children: [
                          CircularItem('assets/images/image36.png', 'Hazard'),
                          SizedBox(height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               RectangularCard('On road', 'assets/images/group445.png'),
                               SizedBox(width: 20,),
                               RectangularCard('Shoulder', 'assets/images/image446.png'),
                          ],),
                          SizedBox(height: 20,),
                          CircularItem('assets/images/image50.png', 'Weather'),
                          SizedBox(height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               
                          ],),
                          SizedBox(height: 10,),
                           Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               BtnWidget('later', Colors.transparent, Colors.white, Colors.black,nav),
                               SizedBox(width: 20,),
                               BtnWidget('Report', Colors.transparent, colorbtn, Colors.white,nav),
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