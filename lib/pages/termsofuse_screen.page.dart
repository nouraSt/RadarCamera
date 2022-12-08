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
      backgroundColor: Colors.red,
      appBar: AppBar(
        title : Text("Terms and conditions"),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView(
            children:  [
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "Lorem ipsum",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." *
                        10,
                  ),
                ),
              ),
              const SizedBox(height: 10),
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
            ],
          ),
        ),
      ),
    );
  }
 
  }
