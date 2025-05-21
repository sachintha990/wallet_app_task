import 'package:flutter/material.dart';
import 'package:wallet_app_task/data/favorite_item_data.dart';
import 'package:wallet_app_task/utils/colors.dart';

class FavoriteItem extends StatelessWidget {
  final FavoriteItemData favoriteItemData;
  const FavoriteItem({super.key, required this.favoriteItemData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundColor: AppColors.primaryGrey,
                  child: Image.asset(
                    favoriteItemData.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 10,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.primaryWhite,
                    child: Image.asset(
                      favoriteItemData.country,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              favoriteItemData.name,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
