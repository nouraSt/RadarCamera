import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RectangularCard extends StatelessWidget {
  RectangularCard(this.txt,this.path,{super.key});
  String txt='';
  String path='';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width:120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(path, height:50,width: 50,),
          Text(txt)
        ],
      ),
    );
  }
}