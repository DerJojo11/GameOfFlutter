import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class InfoSlider extends StatelessWidget {
  const InfoSlider({
    this.itemBuilder,
    required this.itemCount,
  });

  final int itemCount;
  final Widget Function(BuildContext, int, int)? itemBuilder;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      options: CarouselOptions(
        height: 150,
        initialPage: 0,
        enableInfiniteScroll: false,
        disableCenter: true,
        enlargeCenterPage: false,
        viewportFraction: 0.93,
      ),
    );
  }
}
