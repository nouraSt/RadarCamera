import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:radarcam_app/constants.dart';
import 'package:radarcam_app/pages/home_screen.page.dart';
import 'package:radarcam_app/widgets/btn.widget.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
   
      
    
    
    return Scaffold(
     backgroundColor: colorback,
      body: SingleChildScrollView(
        child: Stack(alignment: Alignment.center,
          children: [
                 Container(child: const Padding(padding: EdgeInsets.all(20), child: Text('Terms of use',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20), )),
                  color: colorbtn,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height),
                  Positioned(
                    bottom: 0,
                    child: Container(child:Padding(
                      padding: const EdgeInsets.all(20),
                      child: Expanded(
                        child: Column(children: [
                          const Text('What is lorem epsum',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold ),),
                          const SizedBox(height: 20,),
                          const Padding(
                            padding:  EdgeInsets.all(20),
                            child: Text('What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                            style: TextStyle(height: 1.5, fontSize: 14),textAlign: TextAlign.center,)),
                            const SizedBox(height: 120,),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          BtnWidget('Reject', Colors.red, const Color.fromARGB(255, 248, 126, 167),Colors.red,(){}),
                          const SizedBox(width: 10,),
                         ElevatedButton(
                           onPressed: () {
                                  Navigator.push(
                                  context,
                              MaterialPageRoute(builder: (context) => const HomePage()),
                                  );
                              },
                          style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                     side:  const BorderSide(width: 3, color: colorbtn),
                  primary:colorbtn,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
              child: const Text(
                'Accept',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
                         ],),
                        
                        ]),
                      ),
                    ) ,
                    decoration: const BoxDecoration( color: Colors.white,borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),topRight: Radius.circular(20)
                    )),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height-60),
            
                  ),
      
           
          ],
        ),
      ),
    );
  }
 
  }
