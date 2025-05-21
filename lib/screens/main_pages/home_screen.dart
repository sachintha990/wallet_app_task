import 'package:flutter/material.dart';
import 'package:wallet_app_task/data/currency_data.dart';
import 'package:wallet_app_task/data/favorite_item_data.dart';
import 'package:wallet_app_task/data/featuer_card_data.dart';
import 'package:wallet_app_task/utils/colors.dart';
import 'package:wallet_app_task/widgets/favorite_item.dart';
import 'package:wallet_app_task/widgets/feature_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCurrency = 'LKR';

  double balance = 10000.00;

  final name = 'Ehi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Hi $name',
          style: TextStyle(
            color: AppColors.primaryGrey,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none,
                color: AppColors.primaryGrey),
            onPressed: () {},
            iconSize: 30,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "${balance.toStringAsFixed(2)}",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryBlack),
            ),
            DropdownButton<String>(
                value: selectedCurrency,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                underline: Container(),
                items: currencies.map((String currency) {
                  return DropdownMenuItem<String>(
                    value: currency,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            currencyFlags[currency]!,
                            height: 20,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(currency)
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCurrency = newValue!;
                  });
                }),
            const SizedBox(height: 15),
            const Text(
              'Here are some things you can do',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
            SizedBox(height: 10),
            GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(featureCardData.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Coming Soon'),
                            content: const Text('This feature is coming soon!'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: FeatureCard(
                      featureCardData: featureCardData[index],
                      featureCardModel: null,
                    ),
                  );
                })),
            const SizedBox(height: 15),
            const Text(
              'Your favorite people',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryGrey,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Coming Soon'),
                          content: const Text('This feature is coming soon!'),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child: Icon(Icons.add,
                            size: 50,
                            color: AppColors.primaryBlack.withOpacity(0.5)),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Add ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryBlack,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: favoriteItemData.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return FavoriteItem(
                          favoriteItemData: favoriteItemData[index],
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
