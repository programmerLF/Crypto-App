
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../../../coin_details/presentation/pages/coin_details_page.dart';
import '../../data/models/crypto_coins_model.dart';
import 'coin_card.dart';

class LoadedCoinsList extends StatelessWidget {
  final int itemCount;
  final List coinsList;

  const LoadedCoinsList({
    super.key,
    required this.itemCount,
    required this.coinsList,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        CryptoCoinsModel coin = coinsList[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CoinDetailsPage(
                            coinKey: coin.key,
                            logoUrl: coin.logo,
                          )));
            },
            child: AppContainer(
              decoration:  BoxDecoration(
                  color: theme.colors.surface,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0))),
              child: CoinCard(coin: coin),
            ),
          ),
        );
      },
    );
  }
}
