import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../../data/models/coin_profile_model.dart';
import '../../data/models/coin_quote_model.dart';
import 'coins_details_widgets.dart';


class LoadedCoinDetails extends StatelessWidget {

  final CoinProfileModel? coinProfile;
  final CoinQuoteModel? coinQuote;


  const LoadedCoinDetails({
    super.key,
    required this.logoUrl, required this.coinProfile, required this.coinQuote,
  });

  final String logoUrl;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
      height: MediaQuery
          .of(context)
          .size
          .height,
      child: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: AppText.smallBold(
                    "#${coinQuote?.rank.toString()}" , color: theme.colors.textBodySecondary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CoinDetailsTopPart(
                  url: logoUrl,
                  coinName: coinProfile?.name ?? '',
                  coinSymbol: coinProfile?.symbol ?? '',
                  coinCategory:
                  coinProfile?.category ?? '',
                  price: coinQuote?.price ?? 0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const LineSeparator(),
              const SizedBox(
                height: 20,
              ),
              AppContainer(
                padding: const AppEdgeInsets.m(),
                child:
                Column(
                  children: [
                    CoinSupplyDetails(supply: coinQuote?.maxSupply??0, symbol: coinProfile?.symbol??"", type: "Total",),
                    CoinSupplyDetails(supply: coinQuote?.totalSupply??0, symbol: coinProfile?.symbol??"",type: "Max",),
                    MarketCapDetails(
                      rate: coinQuote!.marketCapChangePercentage24h,
                      value: coinQuote?.marketCap??0,
                      label: "Market Cap",
                    ),
                    MarketCapDetails(
                      rate: coinQuote!.fullyDilutedMarketCapChangePercentage24h,
                      value: coinQuote?.fullyDilutedMarketCap??0,
                      label: "Diluted Market Cap",
                    ),

                    //Text(StringToDate.convertStringToDate(data.coinQuote?.highAllTimeTimestamp??"").toLocal().toString())

                  ],
                ),
              ),
              PriceChangeChart(
                hour: coinQuote
                    ?.priceChangePercentage1h ?? 0,
                day: coinQuote
                    ?.priceChangePercentage24h ?? 0,
                sevenDays: coinQuote
                    ?.priceChangePercentage7d ?? 0,
                thirtyDays: coinQuote
                    ?.priceChangePercentage30d ?? 0,
                sixtyDays: coinQuote
                    ?.priceChangePercentage60d ?? 0,
                ninetyDays: coinQuote
                    ?.priceChangePercentage90d ?? 0,
                year: coinQuote
                    ?.priceChangePercentage1y ?? 0,
              ),

              Markdown(
                 physics: const NeverScrollableScrollPhysics(),
                 styleSheet: MarkdownStyleSheet(
                   h2: TextStyle(color: theme.colors.textBodyPrimary),
                   h3: TextStyle(color: theme.colors.textBodyPrimary),
                   a: TextStyle(color: theme.colors.success),
                   p: TextStyle(color: theme.colors.textBodyPrimary),

                 ),
                  shrinkWrap: true,
                  data: coinProfile?.description ?? ""),
            ],
          ),
        ],
      ),
    );
  }
}

