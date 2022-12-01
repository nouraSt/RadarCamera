import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radarcam_app/constants.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  
  @override
  Widget build(BuildContext context) {
    return   CurvedNavigationBar(
             height: 60.0, // ***** NAVBAR  *************************
            backgroundColor: colorback,
            color: Colors.white,
            animationCurve: Curves.easeInOut,
            buttonBackgroundColor: colorbtn,
            animationDuration: Duration(milliseconds: 300),
            onTap: (index){
              
            },
            items: [
            ImageIcon(
                          AssetImage('assets/images/card.png'),
                          size: 40,
                          color: Colors.black,
                        ),
                    
                  
             ImageIcon(
                          AssetImage('assets/images/carbonadd.png'),
                          size: 40,
                          color: Colors.black,
                        ),
                      
                 
           ImageIcon(
                          AssetImage('assets/images/settings.png'),
                          size: 40,
                          color: Colors.black,
                        ),
                        
                  
            
                 
            ],
            
      
    );
      
    
  }
}