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
                  child: ClipOval(
                    child: Image.asset(
                      favoriteItemData.imageUrl,
                      height: 150,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 10,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.primaryWhite,
                    child: ClipOval(
                      child: Image.asset(
                        favoriteItemData.countryUrl,
                        fit: BoxFit.cover,
                        width: 20,
                        height: 20,
                      ),
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
