import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/constants.dart';

class IconBar extends StatelessWidget {
  const IconBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Image.asset('assets/images/camera.png',width:30,height:30),
      SizedBox(width:50,),
       Container(color: Colors.black45, height: 30, width: 2,),
       SizedBox(width: 50,),
      Row(children: [Image.asset('assets/images/message.png',width:30,height:30),
      const Text('Add a comment',style: TextStyle(color: colorbtn))]),
    ],);
  }
}