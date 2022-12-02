import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radarcam_app/constants.dart';
import 'package:radarcam_app/pages/map_screen.page.dart';
import 'package:radarcam_app/pages/settings_screen.dart';
import 'package:radarcam_app/pages/updatemap_screen.page.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  GlobalKey _NavKey = GlobalKey();

  var PagesAll = [MapScreen(),UpdateTheMap(),SettingsScreen()];

  var myindex =0;
  @override
  Widget build(BuildContext context) {
    
    return   CurvedNavigationBar(
             key: _NavKey,
              index: 0,
             height: 60.0, // ***** NAVBAR  *************************
            backgroundColor: colorback,
            color: Colors.white,
            animationCurve: Curves.easeInOut,
            buttonBackgroundColor: colorbtn,
            animationDuration: Duration(milliseconds: 300),
            onTap: (index){
            setState(() {
            myindex = index;
            });
           },      
            items: [
             ImageIcon(
                          AssetImage('assets/images/card.png'),
                          size: 40,
                          color: Colors.black 
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