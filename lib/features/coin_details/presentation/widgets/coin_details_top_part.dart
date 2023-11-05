import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/widgets/base/text.dart';

import '../../../../common_widgets/image_loader.dart';
import '../../../../core/customized_text_style.dart';

class CoinDetailsTopPart extends StatelessWidget {
  final String coinName;
  final String coinSymbol;
  final String coinCategory;
  final String url;
  final num price;

  const CoinDetailsTopPart({
    super.key,
    required this.coinName,
    required this.coinSymbol,
    required this.coinCategory,
    required this.url,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            LoadingImage(url: url),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                AppText.headline(coinName, color: theme.colors.textBodyPrimary,),
                const SizedBox(
                  width: 10,
                ),
                AppText.bodyBold(
                  coinSymbol,
                    color: theme.colors.textBodySecondary,
                ),
              ],
            ),
            AppText.bodyBold(
              coinCategory,
                color: theme.colors.textBodySecondary
            ),
            AppText.amountLarge(
              "${NumberFormat.decimalPattern().format(price)} \$",
                color: theme.colors.textBodyPrimary
            ),
          ],
        ),
      ],
    );
  }
}
