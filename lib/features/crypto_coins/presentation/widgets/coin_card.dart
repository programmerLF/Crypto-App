import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/image_loader.dart';
import '../../../../core/util/max_supply_checker.dart';
import '../../data/models/crypto_coins_model.dart';

class CoinCard extends StatelessWidget {
  const CoinCard({
    super.key,
    required this.coin,
  });

  final CryptoCoinsModel coin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: MediaQuery.of(context).size.width - 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "#${coin.rank.toString()}",
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 16) / 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageLoader(url: coin.logo),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 16) / 4,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(
                            coin.name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                          const SizedBox(
                            height: 5,
                          ),
                          Center(child: Text(coin.symbol)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 16) / 4,
                      height: 100,
                      child: Column(
                        children: [
                          const Expanded(
                              child: Center(
                                  child: Text(
                            "Max Supply",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ))),
                          Expanded(
                            child: Center(
                                child: Text(
                              "${NumberFormat.decimalPattern()
                                  .format(MaxSupplyChecker.numOrNull(maxSupply: coin.maxSupply))} ${coin.symbol}"),
                            )
                                ),

                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                              child: Center(
                                  child: Text(
                            "Total Supply",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ))),
                          Expanded(
                            child: Center(
                              child:
                                  // Text("${coin.totalSupply.toStringAsFixed(2)}"),
                                  Text(
                                "${NumberFormat.decimalPattern()
                                    .format(coin.totalSupply)} ${coin.symbol}"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
