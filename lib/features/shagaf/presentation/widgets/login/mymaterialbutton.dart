import 'package:flutter/material.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';

class Mymaterialbutton extends StatelessWidget {
  const Mymaterialbutton(
      {super.key, required this.textdata, required this.myfun});
  final String textdata;
  final Function() myfun;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Color(0xff20473E),
        width: double.infinity,
        child: MaterialButton(
          onPressed: () {
            myfun();
          },
          child: Mytext(
              textdata: textdata,
              size: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
