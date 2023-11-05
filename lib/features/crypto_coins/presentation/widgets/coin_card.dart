import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

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
    final theme = AppTheme.of(context);
    return AppContainer(
        padding: AppEdgeInsets.s(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.smallBold(
              "#${coin.rank.toString()}",
              color: theme.colors.textBodySecondary,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: AppContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LoadingImage(url: coin.logo),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: AppContainer(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Align(
                            child: AppText.bodyBold(
                              coin.name,
                              textAlign: TextAlign.center,
                                color: theme.colors.textBodyPrimary,
                            ),
                          ),
                        ),
                        Center(
                            child: AppText.captionBold(coin.symbol,
                                color: theme.colors.textBodySecondary)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: AppContainer(
                    height: 100,
                    child: Column(
                      children: [
                        Expanded(
                          child: AppText.bodyBold(
                            "Max Supply",
                            color: theme.colors.textBodyPrimary,
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: AppText.amount(
                                "${NumberFormat.decimalPattern().format(MaxSupplyChecker.numOrNull(maxSupply: coin.maxSupply))} ${coin.symbol}",
                              color: theme.colors.textBodySecondary,),

                            // AppText.amountMedium("${MaxSupplyChecker.numOrNull(maxSupply: coin.maxSupply)} $coin.symbol}")
                            //
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         Expanded(
                          child: Center(
                            child: AppText.bodyBold(
                              "Total Supply",
                              color: theme.colors.textBodyPrimary,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: AppText.amount(
                                "${NumberFormat.decimalPattern().format(coin.totalSupply)} ${coin.symbol}", color: theme.colors.textBodySecondary,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
