import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../generated/assets.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_layout.dart';
import '../../../utils/constants/app_strings.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(RadiusConstants.medium)),
        image: DecorationImage(
          image: AssetImage(Assets.imagesCityscape),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        height: 130,
        margin:
            const EdgeInsets.only(top: 145, left: 10, right: 10, bottom: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(RadiusConstants.small),
        ),
        child: Column(
          children: [
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InfoItem(
                    iconPath: Assets.iconsCloud,
                    title: "19C",
                    subTitle: "Cloudy",
                  ),
                  InfoItem(
                    iconPath: Assets.iconsCalender,
                    title: "30 Jan",
                    subTitle: "Mon",
                  ),
                  InfoItem(
                    iconPath: Assets.iconsTime,
                    title: "8:45 PM",
                    subTitle: "GMT+4",
                  ),
                  InfoItem(
                    iconPath: Assets.iconsCurrency,
                    title: "AED",
                    subTitle: r"1$ = 3.67AED",
                  ),
                ],
              ),
            ),
            const Divider(
              color: AppColors.lightGrey,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.directions,
                        color: AppColors.blue,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        AppStrings.getDirections,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                  child: VerticalDivider(
                    color: AppColors.lightGrey,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.call,
                        color: AppColors.blue,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        AppStrings.callAirport,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subTitle;

  const InfoItem(
      {super.key,
      required this.iconPath,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          iconPath,
          width: 16,
          height: 16,
        ),
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        Text(subTitle, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}
