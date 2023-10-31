import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/customized_text_style.dart';
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$type Supply", style: $bodyText,),
        type == "Max" ?Text(
          "${NumberFormat.decimalPattern()
              .format(MaxSupplyChecker.numOrNull(maxSupply: supply))} $symbol", style: $bodyText16Bold,):  Text(
          "${NumberFormat.decimalPattern()
              .format(supply)} $symbol", style: $bodyText16Bold,)
      ],
    );
  }
}