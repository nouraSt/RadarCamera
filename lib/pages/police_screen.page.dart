import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/constants.dart';
import 'package:radarcam_app/widgets/bar_item.widget.dart';
import 'package:radarcam_app/widgets/btn.widget.dart';
import 'package:radarcam_app/widgets/circular_item.widget.dart';
import 'package:radarcam_app/widgets/icons_bar.widget.dart';
import 'package:radarcam_app/widgets/rectangle_card.widget.dart';

class PoliceScreen extends StatelessWidget {
  const PoliceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future nav=
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const PoliceScreen()),
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
                    child:  Container(
                        child:Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          child: Column(
                             
                            children: [
                            CircularItem('assets/images/image33.png', 'Police'),
                            SizedBox(height: 15,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 RectangularCard('Visible', 'assets/images/image33.png'),
                                 SizedBox(width: 20,),
                                 RectangularCard('Hiden', 'assets/images/image40.png'),
                            ],),
                            SizedBox(height: 10,),
                            CircularItem('assets/images/image40.png', 'Other side'),
                            SizedBox(height: 15,),
                           
                            SizedBox(height: 15,),
                             Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 BtnWidget('later', Colors.transparent, Colors.white, Colors.black,nav),
                                 SizedBox(width: 10,),
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