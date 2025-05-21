import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app_task/utils/colors.dart';

class FeatuerCardData {
  final dynamic icon; // Changed from IconData to dynamic
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
    icon: SvgPicture.asset(
      'assets/icons/external-link.svg',
      colorFilter: ColorFilter.mode(AppColors.primaryBlack, BlendMode.srcIn),
      semanticsLabel: 'My SVG Image',
      height: 40,
    ),
    lable: 'Pay someone',
    subtex: 'To wallet, bank mobile number',
    color: const Color(0xFF4CAF50),
  ),
  FeatuerCardData(
    icon: SvgPicture.asset(
      'assets/icons/file-import.svg',
      colorFilter: ColorFilter.mode(AppColors.primaryBlack, BlendMode.srcIn),
      semanticsLabel: 'My SVG Image',
      height: 40,
    ),
    lable: 'Request money ',
    subtex: 'Request money from Orobopay users',
    color: const Color(0xFF2196F3),
  ),
  FeatuerCardData(
    icon: SvgPicture.asset(
      'assets/icons/smartphone.svg',
      colorFilter: ColorFilter.mode(AppColors.primaryBlack, BlendMode.srcIn),
      semanticsLabel: 'My SVG Image',
      height: 40,
    ),
    lable: 'Buy airtime',
    subtex: 'Top-up or send airtime across Africa',
    color: const Color(0xFFFF9800),
  ),
  FeatuerCardData(
    icon: SvgPicture.asset(
      'assets/icons/wallet.svg',
      colorFilter: ColorFilter.mode(AppColors.primaryBlack, BlendMode.srcIn),
      semanticsLabel: 'My SVG Image',
      height: 40,
    ),
    lable: 'pay bill',
    subtex: 'Zero transaction fees when you pay',
    color: const Color.fromARGB(255, 174, 0, 255),
  ),
];
