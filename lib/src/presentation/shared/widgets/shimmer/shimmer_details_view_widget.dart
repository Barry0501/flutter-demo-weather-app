import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../weather/widgets/app_bar_widget.dart';
import '../gradient_container_widget.dart';
import 'shimmer_container_effect_widget.dart';
import 'shimmer_details_view_body_widget.dart';

class ShimmerDetailsViewWidget extends StatelessWidget {
  const ShimmerDetailsViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientContainerWidget(
      colors: AppColors.backgroundGradient,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width,
      child: const Stack(
        children: [
          SafeArea(
            child: AppBarWidget(
              title: ShimmerContainerEffectWidget(
                width: 130,
                height: 15,
                margin: EdgeInsets.only(top: 10),
              ),
            ),
          ),
          ShimmerDetailsViewBodyWidget(),
        ],
      ),
    );
  }
}
