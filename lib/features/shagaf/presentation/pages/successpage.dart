// import 'package:flutter/material.dart';
// import 'package:shagaf2/core/constants/colors.dart';
// import 'package:shagaf2/features/shagaf/presentation/widgets/dialog.dart';
// import 'package:shagaf2/features/shagaf/presentation/widgets/login/imagelogin.dart';
// import 'package:shagaf2/features/shagaf/presentation/widgets/login/mymaterialbutton.dart';

// class Successpage extends StatelessWidget {
//   const Successpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar()
//     ,body: Stack(
//       children: [
//             Column(children: [ 
//                   Imagelogin(),
//                   SizedBox(height: 30,),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Card(color: yellow,
//                     child: Column( 
//                       children: [ 
//                                 SizedBox(height: 300,
//                                 ),
//                                 Mymaterialbutton(textdata: "verify",
//                                  myfun: (){showDialog(context: context, builder:(context)=>mydailog());}),

//                       ],
//                     ),),
//                   ),
//                   SizedBox(height: 40,)
//             ],),

//           ],
//     ),);
//   }
// }