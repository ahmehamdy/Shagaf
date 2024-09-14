import 'package:flutter/material.dart';

class Bottomnavigation extends StatelessWidget {
  const Bottomnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      
      items: [ 
      BottomNavigationBarItem(icon: Icon(Icons.home, ),label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.book, ),label: 'book'),
      BottomNavigationBarItem(icon: Icon(Icons.pending, ),label: 'pending'),
    //  BottomNavigationBarItem(icon: Icon(Icons.more, ),label: 'more')
    ],);
  }
}