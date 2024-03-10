import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';

class CustomSquareChip extends StatelessWidget {
  final String title;
  final bool isSelected;
  const CustomSquareChip(
      {super.key, required this.title, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.black : AppColors.lightGrey3,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? AppColors.white : AppColors.black,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
