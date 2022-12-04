import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BtnWidget extends StatelessWidget {
   BtnWidget(this.txt, this.borderColor,this.backBtnColor,this.textColr,this.navigate, {super.key});
   String txt='';
   Color borderColor=Colors.transparent; 
   Color backBtnColor=Colors.transparent; 
   Color textColr= Colors.transparent;
   dynamic navigate; 
    

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed: () {
                 navigate;
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side:  BorderSide(width: 3, color: borderColor),
                  primary:backBtnColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
              child: Text(
                txt,
                style: TextStyle(color: textColr, fontSize: 16),
              ),
            );
  }
}