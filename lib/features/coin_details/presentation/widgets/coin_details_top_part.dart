import 'package:flutter/material.dart';

import '../../../../common_widgets/image_loader.dart';
import '../../../../core/customized_text_style.dart';


class CoinDetailsTopPart extends StatelessWidget {
  final String coinName;
  final String coinSymbol;
  final String coinCategory;
  final String url;
  final String price;

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            ImageLoader(url: url),

          ],
        ),
        Column(
          children: [

            Row(
              children: [

                Text(coinName, style: $coinNameBold),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  coinSymbol,
                  style: $bodyText,
                ),
              ],
            ),
            Text(
              coinCategory,
              style: $bodyText,
            ),
            Text(
              "$price\$",
              style: $priceText,
            ),
          ],
        ),
      ],
    );
  }
}