import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/constants.dart';
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
                        Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          CircularItem('assets/images/image32.png','Traffic'),
                          CircularItem('assets/images/image33.png','Police'),
                        ],),
                        SizedBox(height:50,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          CircularItem('assets/images/image35.png','Speed camera'),
                          CircularItem('assets/images/image36.png','Hazard'),
                        ],)
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
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}