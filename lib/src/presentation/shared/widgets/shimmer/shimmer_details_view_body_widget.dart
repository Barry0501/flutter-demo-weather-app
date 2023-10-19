import 'package:flutter/material.dart';

import 'shimmer_circle_avatar_effect_widget.dart';
import 'shimmer_container_effect_widget.dart';

class ShimmerDetailsViewBodyWidget extends StatelessWidget {
  const ShimmerDetailsViewBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ShimmerContainerEffectWidget(
            width: 85,
            height: 14,
          ),
          // const ShimmerContainerEffectWidget(
          //   width: 260,
          //   height: 220,
          //   borderRadius: 20,
          // ),
          const ShimmerContainerEffectWidget(
            width: 50,
            height: 50,
            borderRadius: 12,
          ),
          const ShimmerContainerEffectWidget(
            width: 140,
            height: 15,
          ),
          const ShimmerContainerEffectWidget(
            width: double.infinity,
            height: 90,
            borderRadius: 20,
          ),
          const ShimmerContainerEffectWidget(
            width: double.infinity,
            height: 120,
            borderRadius: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [1, 2, 3, 4, 5, 6, 7].map((e) {
              return const Padding(
                padding: EdgeInsets.only(right: 5),
                child: ShimmerCircleAvatarEffectWidget(),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
