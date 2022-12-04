import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:radarcam_app/constants.dart';
import 'package:radarcam_app/widgets/ad.widget.dart';
import 'package:radarcam_app/widgets/bottom_nav.widget.dart';
import 'package:radarcam_app/widgets/counter.widget.dart';
import 'package:radarcam_app/widgets/mapiconsbar.widget.dart';
import 'package:radarcam_app/widgets/position_btn.widget.dart';

class MapPageReport extends StatefulWidget {
  const MapPageReport({super.key});

  @override
  State<MapPageReport> createState() => _MapPageReportState();
}

class _MapPageReportState extends State<MapPageReport> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(child: Padding(padding: EdgeInsets.all(20), child: Text('Report Speed Camera',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20), )),
                  color: colorbtn,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration( color: colorback,borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),topRight: Radius.circular(20)
                        ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height-60,
                     
              child: GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
                  ),
            ),
          ),
        Positioned(
          top:400,
          child: MyWidget()),
        Positioned(
          top:500,
          child: AdContainer())
       
      ]), 
       
      );
      
    
   
  }
  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}