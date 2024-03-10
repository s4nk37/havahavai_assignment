import 'package:flutter/material.dart';
import 'package:havahavai_assignment/ui/screens/airport/price_card.dart';

import '../../../generated/assets.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_layout.dart';
import '../../../utils/constants/app_strings.dart';
import '../../common/custom_card.dart';

class TaxiServiceCard extends StatelessWidget {
  const TaxiServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: AppStrings.taxiService,
      child: GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 4 / 3,
        ),
        children: [
          const TaxiServiceItem(
            imagePath: Assets.imagesUber,
            price: 4,
          ),
          const TaxiServiceItem(
            imagePath: Assets.imagesCareem,
            price: 4,
          ),
          const TaxiServiceItem(
            imagePath: Assets.imagesYango,
            price: 3,
          ),
          const TaxiServiceItem(
            imagePath: Assets.imagesBlacklane,
            price: 5,
            isLuxury: true,
          ),
        ],
      ),
    );
  }
}

class TaxiServiceItem extends StatelessWidget {
  final String imagePath;
  final int price;
  final bool isLuxury;
  const TaxiServiceItem(
      {super.key,
      required this.imagePath,
      required this.price,
      this.isLuxury = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey2),
        borderRadius: BorderRadius.circular(RadiusConstants.small),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isLuxury)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
              transform: Matrix4.translationValues(0, -10, 0),
              decoration: const BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
              ),
              child: const Text(
                AppStrings.luxury,
                style: TextStyle(color: AppColors.goldenYellow, fontSize: 10),
              ),
            ),
          Image.asset(imagePath),
          const SizedBox(
            height: 8,
          ),
          PriceCard(price: price),
        ],
      ),
    );
  }
}
