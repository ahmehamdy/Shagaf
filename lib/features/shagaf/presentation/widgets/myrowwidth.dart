import 'package:flutter/material.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';

class Myrowwidth extends StatelessWidget {
  const Myrowwidth({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Card(child: Mytext(textdata: "membership", size: 18, color: Colors.white, 
            fontWeight: FontWeight.bold),color: Colors.red,),
            Card(child: Mytext(textdata: "Birthday", size: 18, color: Colors.white, 
        fontWeight: FontWeight.bold),color: Colors.red,),
           Card(child: Mytext(textdata: "photo session", size: 18, color: Colors.white, 
        fontWeight: FontWeight.bold),color: Colors.red,)
         ],
       );
  }
}