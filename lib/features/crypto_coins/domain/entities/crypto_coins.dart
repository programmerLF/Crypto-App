import 'package:equatable/equatable.dart';

class CryptoCoins extends Equatable {
  final String key;
  final String name;
  final String symbol;
  final int rank;

  // might be a number or null so how am i supposed to specify it?
  final String maxSupply;
  final num totalSupply;

  // is active will contain 0 or 1 to specify the status.
  final int isActive;
  final num high24h;
  final num low24h;
  final Map<String, dynamic> quote;
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

  @override
  List<Object?> get props => [
        key,
        name,
        symbol,
        rank,
        maxSupply,
        totalSupply,
        isActive,
        high24h,
        low24h,
        quote,
        logo,
        link
      ];
}
