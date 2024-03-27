import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderWidget extends StatelessWidget {
  final List<String> imageAssets;
  final Function(int, CarouselPageChangedReason)? onPageChanged;

  const CarouselSliderWidget({
    required this.imageAssets,
    this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageAssets.length,
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.34,
        autoPlay: true,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        onPageChanged: onPageChanged,
      ),
      itemBuilder: (context, index, _) {
        return Image.asset(
          imageAssets[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}
