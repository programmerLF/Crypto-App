

import 'package:crypto_app/features/crypto_coins/domain/entities/crypto_coins.dart';

class CoinProfile extends CryptoCoins{
  String category;
  String description;
  CoinProfile({required super.key, required super.name, required super.symbol, required this.description, required this.category});

}