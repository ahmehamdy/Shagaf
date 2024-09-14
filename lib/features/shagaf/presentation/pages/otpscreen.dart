import 'package:flutter/material.dart';
import 'package:shagaf2/core/constants/colors.dart';
import 'package:shagaf2/core/strings/string.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/dialog.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/login/imagelogin.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/login/mymaterialbutton.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/myotp.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Imagelogin(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: yellow,
              child: Column(
                children: [
                  Row(children: [ 
                    Mytext(textdata: "Enter verification code",
                     size: 20, color: null, fontWeight: null),
                  ],),
                  Row(children: [Mytext(textdata: enternumber, size: 15, color: Color(0xffA1A8B0
), fontWeight: null)],),
Row(children: [Mytext(textdata: "012345678***", size: 15, color: null, fontWeight: null)],),
SizedBox(height: 30,),
                  Myotp(),
                  SizedBox(height: 30,),
                  Mymaterialbutton(
                      textdata: "verify",
                      myfun: () {
                        showDialog(
                            context: context, builder: (context) => mydailog());
                      }),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
