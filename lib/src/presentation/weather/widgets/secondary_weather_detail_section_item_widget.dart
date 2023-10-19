import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class SecondaryWeatherDetailsSectionItemWidget extends StatelessWidget {
  const SecondaryWeatherDetailsSectionItemWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
    required this.iconColor,
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: 22,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: AppColors.grey50,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(letterSpacing: 1.5, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
