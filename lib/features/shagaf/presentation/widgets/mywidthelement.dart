import 'package:flutter/material.dart';

class Mywidthelement extends StatelessWidget {
  const Mywidthelement({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
            width: double.infinity,
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                            height: 110,
                        width: 250,
                      child: Image(
                        image: AssetImage('images/showwidth.PNG'),
                        fit: BoxFit.cover,
                                    
                      ),
                    ),
                  );
                }),
          );
  }
}