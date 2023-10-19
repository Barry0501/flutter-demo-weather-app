import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../utils/app_colors.dart';

class ShimmerCircleAvatarEffectWidget extends StatelessWidget {
  const ShimmerCircleAvatarEffectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.grey500.withOpacity(0.3),
      highlightColor: AppColors.white.withOpacity(0.6),
      child: CircleAvatar(
        backgroundColor: AppColors.white.withOpacity(0.9),
        radius: 9,
      ),
    );
  }
}
