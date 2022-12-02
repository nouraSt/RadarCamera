import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemBar extends StatelessWidget {
   ItemBar(this.txt,{super.key});
  String txt='';

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 350,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
       child: Padding(
        padding: EdgeInsets.only(left:20,right:20),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Text(txt),
          Image.asset('assets/images/vector.png')
         ]),
       ),
    );
  }
}