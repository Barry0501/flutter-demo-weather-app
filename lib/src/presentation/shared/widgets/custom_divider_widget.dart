import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({
    Key? key,
    this.height,
    this.width,
    this.color,
  }) : super(key: key);

  final double? width, height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 1,
      height: height ?? 40,
      color: color ?? AppColors.grey.withOpacity(0.3),
    );
  }
}
