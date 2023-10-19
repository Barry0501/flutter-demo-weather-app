import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/uidata.dart';
import '../../shared/widgets/gradient_container_widget.dart';
import 'app_bar_widget.dart';

class DetailsErrorWidget extends StatelessWidget {
  const DetailsErrorWidget({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return GradientContainerWidget(
      colors: AppColors.redGradient,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const AppBarWidget(
            title: Text(
              'Opps!',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 60,
            ),
            child: Center(
              child: Column(
                children: [
                  Lottie.asset(
                    UIData.errorCloud,
                    width: 230,
                    height: 210,
                  ),
                  const SizedBox(height: 60),
                  Text(
                    error,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
