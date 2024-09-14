import 'package:flutter/material.dart';
import 'package:shagaf/core/constants/imagelinks.dart';
import 'package:shagaf2/core/functions/navigate.dart';
import 'package:shagaf2/features/shagaf/presentation/pages/rooms.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/bottomnavigation.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mycarsoul.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mydrawerbox.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/myrowwidth.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mywidthelement.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Image(
                image: AssetImage(splashimage),
                height: 100,
                width: 100,
              ),
            ),
            Mydrawerbox()
          ],
        ),
      ),
      bottomNavigationBar: const Bottomnavigation(),
      body: ListView(
        children: [
          const Mycarsoul(),
          const Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Mytext(
                  textdata: 'advertisment',
                  size: 20,
                  color: null,
                  fontWeight: null),
            ],
          ),
          const Mywidthelement(),
          const Myrowwidth(),
          const Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Mytext(
                  textdata: 'catagories',
                  size: 20,
                  color: null,
                  fontWeight: null),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: SizedBox(
                height: 250,
                width: double.infinity,
                child: InkWell(
                    onTap: () {
                      navigate(context, () => Rooms());
                    },
                    child: const Image(image: AssetImage(bottom), fit: BoxFit.fill))),
          )
        ],
      ),
    );
  }
}
 

//  import 'package:flutter/material.dart';
// import 'package:shagaf2/core/constants/imagelinks.dart';
// import 'package:shagaf2/features/shagaf/presentation/widgets/bottomnavigation.dart';
// import 'package:shagaf2/features/shagaf/presentation/widgets/mycarsoul.dart';
 
// import 'package:shagaf2/features/shagaf/presentation/widgets/myrowwidth.dart';
// import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';
// import 'package:shagaf2/features/shagaf/presentation/widgets/mywidthelement.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
     
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             SizedBox(height: 30,),
//            Center(child:  Image(image: AssetImage(splashimage),
//            height: 100,width: 100,),),
          
         
//           ],
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       bottomNavigationBar: Bottomnavigation(),
//       body: ListView(
//         children: [
       
//           Mycarsoul(),
//           Row(mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(width: 30),
//               Mytext(
//                   textdata: 'advertisment',
//                   size: 20,
//                   color: null,
//                   fontWeight: null),
//             ],
//           ),
//           Mywidthelement(),
//           Myrowwidth(),
//           Row(
//             children: [
//               SizedBox(width: 30),
//               Mytext(
//                   textdata: 'catagories',
//                   size: 20,
//                   color: null,
//                   fontWeight: null),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 8.0, right: 8),
//             child: Container(
//                 height: 250,
//                 width: double.infinity,
//                 child: Image(image: AssetImage(bottom), fit: BoxFit.fill)),
//           ),
//         ],
//       ),
//     );
//   }
// }
