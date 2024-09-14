import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  const Mytext(
      {super.key,
      required this.textdata,
      required this.size,
      required this.color,
      required this.fontWeight});
  final String textdata;
  final double size;
  final Color? color;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        textAlign: TextAlign.center,
        textdata,
        style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight,fontFamily: 'Comfortaa'),
      ),
    );
  }
}
