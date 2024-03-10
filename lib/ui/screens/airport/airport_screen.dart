import 'package:flutter/material.dart';
import 'package:havahavai_assignment/ui/common/custom_chip.dart';
import 'package:havahavai_assignment/ui/screens/airport/info_card.dart';
import 'package:havahavai_assignment/ui/screens/airport/taxi_service_card.dart';
import 'package:havahavai_assignment/utils/constants/app_strings.dart';

import 'public_transport_card.dart';

class AirportScreen extends StatelessWidget {
  const AirportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 27, bottom: 50),
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
          const InfoCard(),

          /// Chips
          SizedBox(
            height: 36,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: const [
                CustomChip(
                  title: AppStrings.transport,
                  isSelected: true,
                ),
                CustomChip(title: AppStrings.terminal),
                CustomChip(title: AppStrings.forex),
                CustomChip(title: AppStrings.contactInfo),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          ///Taxi Service Card
          const TaxiServiceCard(),

          const SizedBox(
            height: 20,
          ),

          ///Public Transport
          const PublicTransportCard(),
        ],
      ),
    );
  }
}
