import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

class SmoothIndicator extends StatelessWidget {
  final int count;
  final RxInt currentIndex;

  const SmoothIndicator({
    required this.count,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(
        () => AnimatedSmoothIndicator(
          count: count,
          effect: ExpandingDotsEffect(
            dotWidth: 10,
            dotHeight: 10,
            dotColor: Colors.grey[400]!,
            activeDotColor: const Color.fromARGB(255, 232, 50, 138),
          ),
          activeIndex: currentIndex.value,
        ),
      ),
    );
  }
}
