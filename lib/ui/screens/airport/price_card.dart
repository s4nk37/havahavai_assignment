import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';

class PriceCard extends StatelessWidget {
  final int price;
  const PriceCard({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    if (price < 0 || price > 5) {
      throw Exception("Price should be between 0 and 5");
    }
    List<Text> dark = List.generate(
      price,
      (index) => const Text(
        r"$",
        style: TextStyle(fontSize: 11, color: AppColors.darkGrey),
      ),
    );
    List<Text> light = List.generate(
      5 - price,
      (index) => const Text(
        r"$",
        style: TextStyle(fontSize: 11, color: AppColors.lightGrey3),
      ),
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...dark,
        ...light,
      ],
    );
  }
}
