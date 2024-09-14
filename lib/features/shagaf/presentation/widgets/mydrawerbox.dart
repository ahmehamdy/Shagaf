import 'package:flutter/material.dart';
import 'package:shagaf2/features/shagaf/data/models/drawrmodelitem.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';

// ignore: must_be_immutable
class Mydrawerbox extends StatelessWidget {
  Mydrawerbox({super.key});
  List<Drawrmodelitem> drawerlist = [
    Drawrmodelitem(textdata: 'profile', iconData: Icons.person),
    Drawrmodelitem(textdata: 'english', iconData: Icons.local_activity),
    Drawrmodelitem(textdata: 'orders', iconData: Icons.car_crash_rounded),
    Drawrmodelitem(textdata: 'notification', iconData: Icons.notification_add),
    Drawrmodelitem(textdata: 'rating', iconData: Icons.star),
    Drawrmodelitem(textdata: 'contact us', iconData: Icons.contact_emergency),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    drawerlist[index].iconData,
                    color: Colors.red,
                  ),
                  Mytext(
                      textdata: drawerlist[index].textdata,
                      size: 30,
                      color: null,
                      fontWeight: null)
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
            );
          }),
    );
  }
}
