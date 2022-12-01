import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FloatingButton extends StatefulWidget {
  
  FloatingButton({super.key});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: FloatingActionButton( 
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius:
            BorderRadius.all(Radius.circular(30.0) ,)),
            //Floating action button on Scaffold
               onPressed: () async{
              //code to execute on button press
                  
               },
               child: ImageIcon(
                       AssetImage("assets/images/card.png"),
                      color: Colors.white,
                     size: 24,
                       ), //icon inside button
           ),
    );
  }
}