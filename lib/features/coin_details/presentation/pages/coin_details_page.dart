import 'package:crypto_app/common_widgets/common_widgets.dart';
import 'package:crypto_app/config/init_getit.dart';
import 'package:crypto_app/core/customized_text_style.dart';
import 'package:crypto_app/features/coin_details/presentation/cubit/coin_details_cubit.dart';
import 'package:crypto_app/features/coin_details/presentation/cubit/coin_details_state.dart';
import 'package:crypto_app/features/coin_details/presentation/widgets/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../widgets/coin_details_top_part.dart';
import '../widgets/line_separator.dart';

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
          create: (_) => getIt<CoinDetailsCubit>()..getCoinDetails(coinKey),
          child: Container(
            child: BlocConsumer<CoinDetailsCubit, CoinDetailsState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.maybeMap(
                    loading: (_) => const LoadingIndicator(),
                    loaded: (data) {
                      return Container(
                        height: MediaQuery.of(context).size.height,
                        child: ListView(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "#${data.coinQuote?.rank.toString()}",
                                      style:
                                      const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child:
                                      Container(

                                        width: MediaQuery.of(context).size.width*2,
                                        height: 250,
                                        child: LineChart.priceChangeByDayData(
                                          hour: data.coinQuote
                                                  ?.priceChangePercentage1h ??
                                              0,
                                          day: data.coinQuote
                                                  ?.priceChangePercentage24h ??
                                              0,
                                          sevenDays: data.coinQuote
                                                  ?.priceChangePercentage7d ??
                                              0,
                                          thirtyDays: data.coinQuote
                                                  ?.priceChangePercentage30d ??
                                              0,
                                          sixtyDays: data.coinQuote
                                                  ?.priceChangePercentage60d ??
                                              0,
                                          ninetyDays: data.coinQuote
                                                  ?.priceChangePercentage90d ??
                                              0,
                                        ),
                                      ),

                                  ),
                                ),



                                Container(
                                  height: MediaQuery.of(context).size.height,
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
                    error: (error) => Text(error.errorMsg),
                    orElse: () => Container(
                          child: const Text("Unexpected Error"),
                        ));
              },
            ),
          ),
        ));
  }
}
