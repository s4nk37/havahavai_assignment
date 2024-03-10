import 'package:flutter/material.dart';
import 'package:havahavai_assignment/utils/constants/app_layout.dart';

import '../../utils/constants/app_colors.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Widget? child;
  const CustomCard({super.key, this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey2),
        borderRadius: BorderRadius.circular(RadiusConstants.medium),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          child ?? const SizedBox(),
        ],
      ),
    );
  }
}
