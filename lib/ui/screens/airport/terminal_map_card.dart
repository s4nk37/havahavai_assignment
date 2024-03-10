import 'package:flutter/material.dart';
import '../../common/custom_card.dart';
import '../../../utils/constants/app_layout.dart';

import '../../../generated/assets.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_strings.dart';
import '../../common/custom_square_chip.dart';

class TerminalMapCard extends StatelessWidget {
  const TerminalMapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: AppStrings.terminalMap,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              CustomSquareChip(
                title: "T1",
                isSelected: true,
              ),
              SizedBox(
                width: 20,
              ),
              CustomSquareChip(
                title: "T2",
                isSelected: false,
              ),
              SizedBox(
                width: 20,
              ),
              CustomSquareChip(
                title: "T3",
                isSelected: false,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(RadiusConstants.medium)),
              image: DecorationImage(
                image: AssetImage(Assets.imagesMapSmall),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 17),
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "View",
                style: TextStyle(color: AppColors.white, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
