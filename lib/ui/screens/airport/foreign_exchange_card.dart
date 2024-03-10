import 'package:flutter/material.dart';
import '../../common/custom_card.dart';
import '../../../utils/constants/app_layout.dart';

import '../../../generated/assets.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_strings.dart';
import '../../common/custom_square_chip.dart';

class ForeignExchangeCard extends StatelessWidget {
  const ForeignExchangeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: AppStrings.foreignExchange,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ExpansionTile(
            title: Text("Travelex"),
            tilePadding: const EdgeInsets.all(0),
            shape: Border.all(color: Colors.transparent),
            initiallyExpanded: true,
            children: [
              Text(
                "Terminal 3-Airside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room",
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.mediumGrey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Divider(
            color: AppColors.lightGrey2,
            height: 15,
          ),
          ExpansionTile(
            title: Text("Al Ansari Exchange"),
            tilePadding: const EdgeInsets.all(0),
            shape: Border.all(color: Colors.transparent),
            children: [
              Text(
                "Terminal 3-Airside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room",
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.mediumGrey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Divider(
            color: AppColors.lightGrey2,
            height: 15,
          ),
          ExpansionTile(
            title: Text("Emirates NBD"),
            tilePadding: const EdgeInsets.all(0),
            shape: Border.all(color: Colors.transparent),
            children: [
              Text(
                "Terminal 3-Airside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room",
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.mediumGrey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
