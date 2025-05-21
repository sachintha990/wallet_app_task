import 'package:flutter/material.dart';
import 'package:wallet_app_task/data/featuer_card_data.dart';

class FeatureCard extends StatelessWidget {
  final FeatuerCardData featureCardData;
  const FeatureCard(
      {super.key, required this.featureCardData, required featureCardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: featureCardData.color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(featureCardData.icon, size: 40),
          const SizedBox(height: 10),
          Text(
            featureCardData.lable,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            featureCardData.subtex,
          ),
        ],
      ),
    );
  }
}
