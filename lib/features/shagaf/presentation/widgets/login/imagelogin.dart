import 'package:flutter/material.dart';
import 'package:shagaf2/core/constants/imagelinks.dart';

class Imagelogin extends StatelessWidget {
  const Imagelogin({super.key});

  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return   Center(
            child: Image(image: AssetImage(splashimage),
            height: size.height/4.5,
            width: size.width/2.8,),
          );
  }
}