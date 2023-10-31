import 'package:crypto_app/common_widgets/common_widgets.dart';
import 'package:crypto_app/features/coin_details/presentation/widgets/coins_details_widgets.dart';
import 'package:crypto_app/config/init_getit.dart';
import 'package:crypto_app/core/customized_text_style.dart';
import 'package:crypto_app/core/util/error_messages.dart';
import 'package:crypto_app/features/coin_details/presentation/cubit/coin_details_cubit.dart';
import 'package:crypto_app/features/coin_details/presentation/cubit/coin_details_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../../../core/util/max_supply_checker.dart';


class CoinDetailsPage extends StatelessWidget {
  final String coinKey;
  final String logoUrl;

  const CoinDetailsPage(
      {required this.coinKey, super.key, required this.logoUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Coin Details",
            style: $pageAppBarTitle,
          ),
        ),
        body: BlocProvider<CoinDetailsCubit>(
          create: (_) =>
          getIt<CoinDetailsCubit>()
            ..getCoinDetails(coinKey),
          child: Container(
            child: BlocConsumer<CoinDetailsCubit, CoinDetailsState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.maybeMap(
                    loading: (_) => const LoadingIndicator(),
                    loaded: (data) {
                      return Container(
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
                                    child: Text(
                                      "#${data.coinQuote?.rank.toString()}",
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CoinDetailsTopPart(
                                    url: logoUrl,
                                    coinName: data.coinProfile?.name ?? '',
                                    coinSymbol: data.coinProfile?.symbol ?? '',
                                    coinCategory:
                                    data.coinProfile?.category ?? '',
                                    price: data.coinQuote?.price
                                        .toStringAsFixed(2) ??
                                        '',
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const LineSeparator(),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,8,15,8),
                                  child: Container(
                                    child:
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text("Max. Supply", style: $bodyText,),
                                            Text(
                                              "${NumberFormat.decimalPattern()
                                                  .format(MaxSupplyChecker.numOrNull(maxSupply: data.coinQuote?.maxSupply??0))} ${data.coinProfile?.symbol??""}", style: $bodyText16Bold,)
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text("Total Supply", style: $bodyText,),
                                            Text(
                                              "${NumberFormat.decimalPattern()
                                                  .format(data.coinQuote?.totalSupply??0)} ${data.coinProfile?.symbol??""}", style: $bodyText16Bold,)
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text("Market Cap", style: $bodyText,),
                                            Row(
                                              children: [
                                                data.coinQuote!.marketCapChangePercentage24h >= 0 ? Text("${NumberFormat.decimalPattern().format(data.coinQuote?.marketCapChangePercentage24h)}%",
                                                  style: $highRate,): Text("${NumberFormat.decimalPattern().format(data.coinQuote?.marketCapChangePercentage24h)}%",
                                                    style: $lowRate),
                                                const SizedBox(width: 10,),
                                                Text("${NumberFormat.decimalPattern()
                                                    .format(
                                                    data.coinQuote?.marketCap)}\$",style: $bodyText16Bold,),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text("Diluted Market Cap", style: $bodyText,),
                                            Row(
                                              children: [
                                                data.coinQuote!.fullyDilutedMarketCapChangePercentage24h >= 0 ? Text("${NumberFormat.decimalPattern().format(data.coinQuote?.fullyDilutedMarketCapChangePercentage24h)}%",
                                                  style: $highRate,): Text("${NumberFormat.decimalPattern().format(data.coinQuote?.fullyDilutedMarketCapChangePercentage24h)}%",
                                                    style: $lowRate),
                                                const SizedBox(width: 10,),
                                                Text("${NumberFormat.decimalPattern()
                                                    .format(
                                                    data.coinQuote?.fullyDilutedMarketCap)}\$",style: $bodyText16Bold,),
                                              ],
                                            ),
                                          ],
                                        ),



                                      ],
                                    ),
                                  ),
                                ),
                                PriceChangeChart(
                                  hour: data.coinQuote
                                      ?.priceChangePercentage1h ?? 0,
                                  day: data.coinQuote
                                      ?.priceChangePercentage24h ?? 0,
                                  sevenDays: data.coinQuote
                                      ?.priceChangePercentage7d ?? 0,
                                  thirtyDays: data.coinQuote
                                      ?.priceChangePercentage30d ?? 0,
                                  sixtyDays: data.coinQuote
                                      ?.priceChangePercentage60d ?? 0,
                                  ninetyDays: data.coinQuote
                                      ?.priceChangePercentage90d ?? 0,
                                  year: data.coinQuote
                                      ?.priceChangePercentage1y ?? 0,
                                ),

                                Container(
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height,
                                  child: Markdown(
                                      data:
                                      data.coinProfile?.description ?? ""),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    error: (error) => ReturnedErrorMsg(msg: error.errorMsg),
                    orElse: () =>
                    const ReturnedErrorMsg(
                      msg: UNEXPECTED_ERROR_MSG,
                    ));
              },
            ),
          ),
        ));
  }
}


