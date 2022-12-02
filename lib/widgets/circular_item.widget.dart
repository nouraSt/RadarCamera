import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CircularItem extends StatelessWidget {
   CircularItem(this.path,this.txt,{super.key});
  String path='';
  String txt='';
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Column(
        children: [
          TextButton(
            onPressed: (){
              
            },
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                    shape: BoxShape.circle,
                     boxShadow: [
                     BoxShadow(
                     color: Colors.grey.withOpacity(0.5),
                     spreadRadius: 3,
                     blurRadius: 7,
                     offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: 
                Image.asset(path,width:60,height: 60,),
                
             ),
          ),
           SizedBox(height: 5,),
          Text(txt),
        ],
      ),
    );
    
  }
}