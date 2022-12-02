
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/widgets/bottom_nav.widget.dart';
import 'package:radarcam_app/widgets/floating-btn.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<DocumentSnapshot>(
        future: FirebaseFirestore.instance.
        collection('collectionPath')
        .doc()
        .get(),
        builder:(context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if(snapshot.hasError){
               return const Center(
                child: Text('hi'),
               );
          }
          if(snapshot.connectionState == ConnectionState.done){
                Map<String,dynamic> data = snapshot.data!.data() as Map<String,dynamic>;
                return Center(child: Text(data['task'], style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,

                ),),);
          } 
          return const Center(
                child: Text('loading'),
               );       
        } ,
      )
     
    );
  }
}