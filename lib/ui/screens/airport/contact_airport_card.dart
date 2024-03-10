import 'package:flutter/material.dart';
import '../../common/custom_card.dart';
import '../../../utils/constants/app_layout.dart';

import '../../../generated/assets.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_strings.dart';
import '../../common/custom_square_chip.dart';

class ContactAirportCard extends StatelessWidget {
  const ContactAirportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomCard(
      title: AppStrings.contactAirport,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ContactAirportItem(
            title: "Police",
          ),
          Divider(
            color: AppColors.lightGrey2,
            height: 20,
          ),
          ContactAirportItem(
            title: "Lost and Found",
          ),
          Divider(
            color: AppColors.lightGrey2,
            height: 20,
          ),
          ContactAirportItem(
            title: "Transport",
          ),
          Divider(
            color: AppColors.lightGrey2,
            height: 20,
          ),
          ContactAirportItem(
            title: "Head office",
          ),
        ],
      ),
    );
  }
}

class ContactAirportItem extends StatelessWidget {
  final String title;
  const ContactAirportItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 15),
          decoration: BoxDecoration(
            color: AppColors.lightGrey2,
            borderRadius: BorderRadius.circular(RadiusConstants.large),
          ),
          child: const Icon(Icons.call),
        ),
      ],
    );
  }
}
