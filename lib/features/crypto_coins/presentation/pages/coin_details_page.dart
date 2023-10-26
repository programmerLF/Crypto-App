import 'package:crypto_app/features/crypto_coins/data/models/crypto_coins_model.dart';
import 'package:flutter/material.dart';

class CoinDetailsPage extends StatelessWidget {
  final CryptoCoinsModel coin;
  const CoinDetailsPage({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Coin Details",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.grey,
      ),
    );
  }
}
