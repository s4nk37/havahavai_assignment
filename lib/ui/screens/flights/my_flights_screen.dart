import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../generated/assets.dart';
import '../../../utils/constants/app_colors.dart';

class MyFlightsScreen extends StatelessWidget {
  const MyFlightsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 195,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.imagesBigMap), fit: BoxFit.fill),
              ),
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 17),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundColor: AppColors.lightGrey,
                      child: FlutterLogo(),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flights",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          "04",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Countries",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          "06",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Distance",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          "4,287 km",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "My Flights",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey2,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.arrow_drop_down_outlined,
                          color: AppColors.black,
                          size: 20,
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(Assets.iconsSearch),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(Assets.iconsAdd),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
