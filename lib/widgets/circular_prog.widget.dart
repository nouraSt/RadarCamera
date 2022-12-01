import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomCircular extends StatefulWidget {
  const CustomCircular({super.key});


  @override
  State<CustomCircular> createState() => _CustomCircularState();
}

class _CustomCircularState extends State<CustomCircular> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> rotateanimation;
  static const Color progressColor = Colors.white;
  @override
  void initState() {
    // TODO: implement initState
    _controller= AnimationController(vsync: this);
    rotateanimation = Tween<double>(begin: 0.0, end:2 * pi).animate(_controller);
    _controller.repeat(period: Duration(seconds: 4));
    super.initState();

  }
  @override
  void dispose(){
      _controller.dispose();
    }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: _controller,
     builder: (BuildContext context, Widget? child ) =>
        Transform.rotate(angle: rotateanimation.value,child: child,),
        child: Image.asset('assets/images/icon.png',color: progressColor,width: 75,height: 75,),

     );
  }
}