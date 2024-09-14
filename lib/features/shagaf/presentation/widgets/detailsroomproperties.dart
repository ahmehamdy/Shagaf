import 'package:flutter/material.dart';
import 'package:shagaf2/core/constants/imagelinks.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';

class Detailsroomproperties extends StatelessWidget {
  Detailsroomproperties({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image(
          image: AssetImage(shagafchairs),
          height: 300,
          fit: BoxFit.cover,
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          child: Container(
            color: Colors.white,
            height: 550,
            child: Column(
              children: [
                Row(
                  children: [
                    Mytext(
                        textdata: title,
                        size: 30,
                        color: Colors.red,
                        fontWeight: null),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Card(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Icon(
                              Icons.chair_outlined,
                              color: Colors.red,
                            ),
                            Mytext(
                                textdata: '30 seats',
                                size: 20,
                                color: Color(0xff333333),
                                fontWeight: FontWeight.bold),
                          ],
                        ),
                        
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
