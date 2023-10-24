
class CryptoCoins {
  final String key;
  final String name;
  final String symbol;
  final int rank;
  final num? maxSupply;
  final num totalSupply;
  // is active will contain 0 or 1 to specify the status.
  final int isActive;
  final num high24h;
  final num low24h;
  final Map<String, num> quote;
  final String logo;
  final String link;

  const CryptoCoins(
      {required this.key,
      required this.name,
      required this.symbol,
      required this.rank,
      required this.maxSupply,
      required this.totalSupply,
      required this.isActive,
      required this.high24h,
      required this.low24h,
      required this.quote,
      required this.logo,
      required this.link});
}
