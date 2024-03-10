import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../common/custom_card.dart';
import '../../common/custom_square_chip.dart';

import '../../../generated/assets.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_strings.dart';

class SelfParkingCard extends StatelessWidget {
  const SelfParkingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomCard(
      title: AppStrings.selfParking,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
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
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SelfParkingItem(
              iconPath: Assets.iconsTwoWheeler,
              title: "Two wheeler",
              rent: "50"),
          SizedBox(
            height: 10,
          ),
          SelfParkingItem(
              iconPath: Assets.iconsCar, title: "Car Parking", rent: "100"),
          SizedBox(
            height: 10,
          ),
          SelfParkingItem(
              iconPath: Assets.iconsElectricCar,
              title: "Electric Car Parking",
              rent: "100"),
        ],
      ),
    );
  }
}

class SelfParkingItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String rent;
  const SelfParkingItem(
      {super.key,
      required this.iconPath,
      required this.title,
      required this.rent});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(iconPath),
        const SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.darkGrey,
          ),
        ),
        const Spacer(),
        Text(
          "AED $rent/day",
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.black,
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        const Icon(
          Icons.info_outlined,
          color: AppColors.darkGrey,
          size: 18,
        ),
      ],
    );
  }
}
