import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/app_colors.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({
    Key? key,
    this.spacing,
    this.radius,
    this.dotWidth,
    this.dotHeight,
    this.dotColor,
    this.activeDotColor,
    required this.pageController,
    required this.count,
  }) : super(key: key);

  final double? spacing, radius, dotWidth, dotHeight;
  final Color? dotColor, activeDotColor;
  final PageController pageController;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SmoothPageIndicator(
        controller: pageController,
        count: count,
        effect: WormEffect(
          spacing: spacing ?? 8,
          radius: radius ?? 10,
          dotWidth: dotWidth ?? 12,
          dotHeight: dotHeight ?? 12,
          dotColor: dotColor ?? AppColors.grey50,
          activeDotColor: activeDotColor ?? AppColors.blueAccent,
        ),
      );
    });
  }
}
