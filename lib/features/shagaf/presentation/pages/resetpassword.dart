// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shagaf2/core/constants/colors.dart';
import 'package:shagaf2/core/functions/navigate.dart';
import 'package:shagaf2/core/strings/string.dart';
import 'package:shagaf2/features/shagaf/presentation/pages/otpscreen.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/login/imagelogin.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/login/mymaterialbutton.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/login/mytextform.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';

class Resetpassword extends StatelessWidget {
  Resetpassword({super.key});
  TextEditingController phonecontroller = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formstate,
        child: ListView(
          children: [
            const Imagelogin(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: yellow,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Mytext(
                            textdata: "Forget Your Password ?",
                            size: 20,
                            color: null,
                            fontWeight: null),
                      ],
                    ),
                    const Row(
                      children: [
                        Mytext(
                            textdata: resetpasswordstring,
                            size: 15,
                            color: Color(0xff787878),
                            fontWeight: null),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Row(
                      children: [
                        Mytext(
                            textdata: "Phone number",
                            size: 14,
                            color: null,
                            fontWeight: null),
                      ],
                    ),
                    Mytextform(
                        controller: phonecontroller,
                        hinttext: "Enter your phone number",
                        iconData: Icons.phone),
                    const SizedBox(
                      height: 20,
                    ),
                    Mymaterialbutton(
                        textdata: "Reset password",
                        myfun: () {
                          if(formstate.currentState!.validate()){

                          navigate(context, () => const Otpscreen());
                          }

                        }),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
