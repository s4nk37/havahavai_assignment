import 'package:flutter/material.dart';
import 'package:havahavai_assignment/ui/screens/airport/info_card.dart';
import 'package:havahavai_assignment/utils/constants/app_layout.dart';
import 'package:havahavai_assignment/utils/constants/app_strings.dart';

import '../../../generated/assets.dart';
import '../../../utils/constants/app_colors.dart';

class AirportScreen extends StatelessWidget {
  const AirportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 27, bottom: 30),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              AppStrings.dubaiAirportDXB,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              AppStrings.dubaiFlagUAE,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          InfoCard(),
        ],
      ),
    );
  }
}
