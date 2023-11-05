import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/customized_text_style.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../../../../core/util/max_supply_checker.dart';



class CoinSupplyDetails extends StatelessWidget {

  final String symbol;
  final num supply;
  final String type;
  const CoinSupplyDetails({
    super.key, required this.symbol, required this.supply, required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText.bodyBold("$type Supply", color: theme.colors.textBodyPrimary,),
        type == "Max" ?AppText.amount(
          "${NumberFormat.decimalPattern()
              .format(MaxSupplyChecker.numOrNull(maxSupply: supply))} $symbol", color: theme.colors.textBodyPrimary,):
        AppText.amount(
          "${NumberFormat.decimalPattern()
              .format(supply)} $symbol", color: theme.colors.textBodyPrimary,)
      ],
    );
  }
}