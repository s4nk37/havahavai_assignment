import 'package:flutter/material.dart';
import 'package:havahavai_assignment/utils/constants/app_layout.dart';

import '../../utils/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final IconData iconData;
  final String title;
  const CustomButton({super.key, required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(RadiusConstants.small),
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            color: AppColors.white,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
