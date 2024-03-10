import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../generated/assets.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_strings.dart';
import '../../common/custom_card.dart';

class PublicTransportCard extends StatelessWidget {
  const PublicTransportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomCard(
      title: AppStrings.publicTransport,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          PublicTransportItem(
            title: AppStrings.metro,
            iconPath: Assets.iconsMetro,
            time: "6am-10pm",
          ),
          Divider(
            color: AppColors.lightGrey2,
            height: 40,
          ),
          PublicTransportItem(
            title: AppStrings.bus,
            iconPath: Assets.iconsBus,
            time: AppStrings.available24Hours,
          ),
        ],
      ),
    );
  }
}

class PublicTransportItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final String time;
  const PublicTransportItem(
      {super.key,
      required this.title,
      required this.iconPath,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(iconPath),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Text(
          time,
          style: const TextStyle(color: AppColors.mediumGrey, fontSize: 11),
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(Assets.iconsRightArrow),
      ],
    );
  }
}
