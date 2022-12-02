import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class LocationBtn extends StatelessWidget {
  const LocationBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/position.png',width:50,height: 50,),
    );
  }
}