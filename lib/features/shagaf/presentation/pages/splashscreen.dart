import 'package:flutter/material.dart';
import 'package:shagaf2/core/constants/imagelinks.dart';
import 'package:shagaf2/features/shagaf/presentation/pages/onboarding1.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
   
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Onboarding1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width); 
    return Scaffold(
      backgroundColor: const Color(0xff146356),
      body: Center(
          child: Image(
        image: const AssetImage(splashimage),
        height: size.height / 4.9,
        width: size.width / 4.1,
      )),
    );
  }
}
