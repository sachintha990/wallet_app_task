class CurrencyData {
  final String name;
  final String flagPath;

  CurrencyData({
    required this.name,
    required this.flagPath,
  });
}

final List<String> currencies = [
  'LKR',
  'USD',
  'EUR',
  'INR',
];

final Map<String, String> currencyFlags = {
  'LKR': 'assets/images/LKR.png',
  'USD': 'assets/images/USD.jpg',
  'EUR': 'assets/images/EUR.jpg',
  'INR': 'assets/images/INR.jpg',
};
