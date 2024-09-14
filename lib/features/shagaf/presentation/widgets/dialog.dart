import 'package:flutter/material.dart';
import 'package:shagaf2/core/constants/colors.dart';
import 'package:shagaf2/core/constants/imagelinks.dart';
import 'package:shagaf2/core/functions/navigate.dart';
import 'package:shagaf2/core/strings/string.dart';
import 'package:shagaf2/features/shagaf/presentation/pages/homepage.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';

class mydailog extends StatelessWidget {
  const mydailog({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AlertDialog(
      backgroundColor: Color(0xffFFFFFF),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage(successimage),
              height: size.height / 3.9,
              width: size.width / 1.9,
              fit: BoxFit.cover,
            ),
            Center(
              child: Mytext(
                  textdata: "Success", size: 20, color: null, fontWeight: null),
            ),
            Center(
              child: Mytext(
                  textdata: successstring,
                  size: 20,
                  color: Color(0xffA1A8B0),
                  fontWeight: null),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    navigate(context, () => Homepage());
                  },
                  color: green,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40, left: 40),
                    child: Mytext(
                        textdata: "Done",
                        size: 17,
                        color: white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
