import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shagaf2/core/constants/colors.dart';
import 'package:shagaf2/core/functions/navigate.dart';
import 'package:shagaf2/features/shagaf/presentation/pages/resetpassword.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/login/imagelogin.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/login/mymaterialbutton.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/login/mytextform.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcotroller = TextEditingController();
  TextEditingController confirmpawssword = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    phonecontroller.dispose();
    passwordcotroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Form(key: formstate,
          child: ListView(children: [
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
                      const Row(
                        children: [
                          Mytext(
                              textdata: "user name",
                              size: 14,
                              color: null,
                              fontWeight: null),
                        ],
                      ),
                      Mytextform(
                          controller: namecontroller,
                          hinttext: "Enter your name",
                          iconData: Icons.person),
                      const Row(
                        children: [
                          Mytext(
                              textdata: "password",
                              size: 14,
                              color: null,
                              fontWeight: null),
                        ],
                      ),
                      Mytextform(
                          controller: passwordcotroller,
                          hinttext: "Enter your password",
                          iconData: Icons.lock),
                      const Row(
                        children: [
                          Mytext(
                              textdata: "confirm password",
                              size: 14,
                              color: null,
                              fontWeight: null),
                        ],
                      ),
                      Mytextform(
                          controller: confirmpawssword,
                          hinttext: "confirm your password",
                          iconData: Icons.lock),
                      Mymaterialbutton(
                        textdata: 'Sign up',
                        myfun: () {
                          if(formstate.currentState!.validate()){ 

                          navigate(context, () => Resetpassword());
                          }
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Mytext(
                              textdata: "Already have an account ?",
                              size: 14,
                              color: null,
                              fontWeight: null),
                          InkWell(
                              onTap: () {},
                              child: const Mytext(
                                textdata: "sign in",
                                size: 14,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      )
                    ],
                  ),
                ))
          ]),
        ));
  }
}
