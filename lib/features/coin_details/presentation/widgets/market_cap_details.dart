

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/customized_text_style.dart';

class MarketCapDetails extends StatelessWidget {
  final String label;
  final num rate;
  final num value;
  const MarketCapDetails({
    super.key, required this.label, required this.rate, required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: $bodyText,),
        Row(
          children: [
            rate >= 0 ? Text("${NumberFormat.decimalPattern().format(rate)}%",
              style: $highRate,): Text("${NumberFormat.decimalPattern().format(rate)}%",
                style: $lowRate),
            const SizedBox(width: 10,),
            Text("${NumberFormat.decimalPattern()
                .format(
                value)}\$",style: $bodyText16Bold,),
          ],
        ),
      ],
    );
  }
}