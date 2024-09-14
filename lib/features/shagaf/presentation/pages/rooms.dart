import 'package:flutter/material.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/roomlistview.dart';

class Rooms extends StatelessWidget {
    Rooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Roomlistview()
    );
  }
}
