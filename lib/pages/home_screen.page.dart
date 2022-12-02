import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/pages/map.page.dart';
import 'package:radarcam_app/pages/map_screen.page.dart';
import 'package:radarcam_app/pages/settings_screen.dart';
import 'package:radarcam_app/pages/updatemap_screen.page.dart';

import '../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey _NavKey = GlobalKey();

  var PagesAll = [MapPage(),UpdateTheMap(),SettingsScreen()];

  var myindex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
       
        key: _NavKey,
          height: 60.0, // ***** NAVBAR  *************************
            backgroundColor: colorback,
            color: Colors.white,
            animationCurve: Curves.easeInOut,
            buttonBackgroundColor: colorbtn,
            animationDuration: Duration(milliseconds: 300),
        items: [
          ImageIcon((myindex == 0) ? AssetImage('assets/images/card.png'):AssetImage('assets/images/blackcard.png')  ),
           ImageIcon((myindex == 1) ? AssetImage('assets/images/whiteplus.png'):AssetImage('assets/images/carbonadd.png'),  ), 
          ImageIcon((myindex == 2) ? AssetImage('assets/images/settings.png'):AssetImage('assets/images/settings.png')  ),        
        
        ],
  
        onTap: (index){
          setState(() {
            myindex = index;
          });
        },
            
      ),
      body: PagesAll[myindex],
    );
  }
}