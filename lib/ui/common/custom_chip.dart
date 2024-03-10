import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_layout.dart';

class CustomChip extends StatelessWidget {
  final String title;
  final bool isSelected;
  const CustomChip({super.key, required this.title, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.only(right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.black : AppColors.lightGrey,
        borderRadius: BorderRadius.circular(RadiusConstants.large),
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: isSelected ? AppColors.white : AppColors.black,
            ),
      ),
    );
  }
}
