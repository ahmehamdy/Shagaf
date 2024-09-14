import 'package:flutter/material.dart';
import 'package:shagaf2/core/constants/imagelinks.dart';
import 'package:shagaf2/core/functions/navigate.dart';
import 'package:shagaf2/features/shagaf/data/models/roommodel.dart';
import 'package:shagaf2/features/shagaf/presentation/pages/detailsroom.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';

// ignore: must_be_immutable
class Roomlistview extends StatelessWidget {
  Roomlistview({super.key});
  List<Roommodel> roomlist = [
    Roommodel(titel: 'training room', image: chairs),
    Roommodel(titel: 'funny room', image: share),
    Roommodel(titel: 'meeting room', image: study),
    Roommodel(titel: 'rest room', image: view)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: roomlist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: InkWell(
              onTap: () {
                navigate(context, () => Detailsroom(thetitle: roomlist[index].titel,));
              },
              child: Card(
                color: const Color(0xffFFFFFF),
                child: Column(
                  children: [
                    SizedBox(
                      height: 140,
                      width: double.infinity,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(roomlist[index].image),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Row(
                      children: [
                        Mytext(
                            textdata: roomlist[index].titel,
                            size: 20,
                            color: null,
                            fontWeight: null),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
