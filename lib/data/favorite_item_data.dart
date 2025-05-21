class FavoriteItemData {
  final String id;
  final String name;
  final String imageUrl;
  final String country;

  FavoriteItemData({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.country,
  });
}

final List<FavoriteItemData> favoriteItemData = [
  FavoriteItemData(
    id: '1',
    name: 'John Doe',
    imageUrl: 'assets/images/LKR.png',
    country: 'USA',
  ),
  FavoriteItemData(
    id: '2',
    name: 'Jane Smith',
    imageUrl: 'assets/images/USD.jpg',
    country: 'USA',
  ),
  FavoriteItemData(
    id: '3',
    name: 'Alice Johnson',
    imageUrl: 'assets/images/INR.jpg',
    country: 'India',
  ),
];
