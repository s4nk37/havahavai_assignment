import 'package:flutter/material.dart';
import '../../common/custom_button.dart';
import '../../common/custom_chip.dart';
import 'contact_airport_card.dart';
import 'foreign_exchange_card.dart';
import 'info_card.dart';
import 'self_parking_card.dart';
import 'taxi_service_card.dart';
import 'terminal_map_card.dart';
import '../../../utils/constants/app_strings.dart';

import 'public_transport_card.dart';

class AirportScreen extends StatelessWidget {
  const AirportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 27, bottom: 0),
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

          ///Public Transport Card
          const PublicTransportCard(),

          const SizedBox(
            height: 20,
          ),

          ///Self Parking Card
          const SelfParkingCard(),
          const SizedBox(
            height: 20,
          ),

          ///Terminal Map Card
          const TerminalMapCard(),
          const SizedBox(
            height: 20,
          ),

          ///Foreign Exchange Card
          const ForeignExchangeCard(),
          const SizedBox(
            height: 20,
          ),

          ///Contact Airport Card
          const ContactAirportCard(),
          const SizedBox(
            height: 20,
          ),

          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                    iconData: Icons.directions,
                    title: AppStrings.getDirections),
                CustomButton(
                    iconData: Icons.call, title: AppStrings.callAirport),
              ],
            ),
          )
        ],
      ),
    );
  }
}
