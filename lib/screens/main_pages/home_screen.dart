import 'package:flutter/material.dart';
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

  final List<String> currencies = ['LKR', 'USD', 'EUR', 'INR'];
  final Map<String, String> currencyFlags = {
    'LKR': 'assets/images/LKR.png',
    'USD': 'assets/images/USD.png',
    'EUR': 'assets/images/EUR.png',
    'INR': 'assets/images/INR.png',
  };

  final balance = '1,234.00';
  final name = 'Ehi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,
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
              balance,
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
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            currencyFlags[currency]!,
                            width: 20,
                            height: 20,
                          ),
                        ),
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
                  return FeatureCard(
                    featureCardData: featureCardData[index],
                    featureCardModel: null,
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
                Column(
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
