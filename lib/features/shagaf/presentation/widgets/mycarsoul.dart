import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shagaf2/core/constants/imagelinks.dart';

class Mycarsoul extends StatelessWidget {
  const Mycarsoul({super.key});
  
 

  @override
  Widget build(BuildContext context) {
        List images = [
     
      onbording1,
      onboarding2,
      onboarding3,
    ];
    return CarouselSlider(
              items: images.map((imagepath) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(  width: double.infinity,
                    height: 200,
                    child: Image(image: AssetImage(imagepath),
                  fit: BoxFit.fill,),
                  ),
                );
              }).toList(),
              options:CarouselOptions(
                   aspectRatio : 16 / 9,
    viewportFraction : 0.8,
    initialPage : 0,
    enableInfiniteScroll : true,
    animateToClosest : true,
    reverse : false,
    autoPlay : true,
    autoPlayInterval : const Duration(seconds: 4),
    autoPlayAnimationDuration : const Duration(milliseconds: 800),
    autoPlayCurve : Curves.fastOutSlowIn,
    enlargeCenterPage : true,
    onPageChanged: (index, reason) {
      
    },
              ));
  }
}