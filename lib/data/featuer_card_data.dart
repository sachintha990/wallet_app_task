import 'package:flutter/material.dart';

class FeatuerCardData {
  final IconData icon;
  final String lable;
  final String subtex;
  final Color color;

  const FeatuerCardData({
    required this.icon,
    required this.lable,
    required this.subtex,
    required this.color,
  });
}

final List featureCardData = [
  FeatuerCardData(
    icon: Icons.account_balance_wallet,
    lable: 'Pay someone',
    subtex: 'To wallet, bank mobile number',
    color: const Color(0xFF4CAF50),
  ),
  FeatuerCardData(
    icon: Icons.send,
    lable: 'Request money ',
    subtex: 'Request money from Orobopay users',
    color: const Color(0xFF2196F3),
  ),
  FeatuerCardData(
    icon: Icons.receipt,
    lable: 'Buy airtime',
    subtex: 'Top-up or send airtime across Africa',
    color: const Color(0xFFFF9800),
  ),
  FeatuerCardData(
    icon: Icons.receipt,
    lable: 'pay bill',
    subtex: 'Zero transaction fees when you pay',
    color: const Color.fromARGB(255, 174, 0, 255),
  ),
];
