class FavoriteItemData {
  final String id;
  final String name;
  final String imageUrl;
  final String countryUrl;

  FavoriteItemData({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.countryUrl,
  });
}

final List<FavoriteItemData> favoriteItemData = [
  FavoriteItemData(
    id: '1',
    name: 'John Doe',
    imageUrl: 'assets/images/person 1.jpg',
    countryUrl: 'assets/images/LKR.png',
  ),
  FavoriteItemData(
    id: '2',
    name: 'Jane Smith',
    imageUrl: 'assets/images/person 2.jpg',
    countryUrl: 'assets/images/USD.jpg',
  ),
  FavoriteItemData(
    id: '3',
    name: 'Alice Johnson',
    imageUrl: 'assets/images/person 3.jpg',
    countryUrl: 'assets/images/INR.jpg',
  ),
];
