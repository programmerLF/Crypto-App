
import 'package:flutter/material.dart';

class CoinDetailsPage extends StatelessWidget {

  const CoinDetailsPage({super.key});

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
