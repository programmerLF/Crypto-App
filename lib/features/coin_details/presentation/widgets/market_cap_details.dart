

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/widgets/base/text.dart';

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
    final theme = AppTheme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText.bodyBold(label,  color: theme.colors.textBodyPrimary,),
        Row(
          children: [
            rate >= 0 ? AppText.amount("${NumberFormat.decimalPattern().format(rate)}%",color: Colors.green,):
                        AppText.amount("${NumberFormat.decimalPattern().format(rate)}%",color: Colors.red,),
            const SizedBox(width: 10,),
            AppText.amount("${NumberFormat.decimalPattern()
                .format(
                value)}\$", color: theme.colors.textBodyPrimary,),
          ],
        ),
      ],
    );
  }
}