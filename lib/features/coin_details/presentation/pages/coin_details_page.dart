import 'package:crypto_app/common_widgets/common_widgets.dart';
import 'package:crypto_app/config/init_getit.dart';
import 'package:crypto_app/core/customized_text_style.dart';
import 'package:crypto_app/features/coin_details/presentation/cubit/coin_details_cubit.dart';
import 'package:crypto_app/features/coin_details/presentation/cubit/coin_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

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
                                    child: CoinDetailsTopPart(
                                      url: logoUrl,
                                      coinName: data.coinProfile?.name??'',
                                      coinSymbol: data.coinProfile?.symbol??'',
                                      coinCategory: data.coinProfile?.category??'',
                                      price: data.coinQuote?.price.toStringAsFixed(2)??'',
                                    ),
                                  ),const SizedBox(height: 20,),


                                  // Text(data.coinQuote?.priceChangePercentage1h.toStringAsFixed(2)??''),
                                  
                                  





                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height,
                                    child: Markdown(
                                        data: data.coinProfile!.description),
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
        ImageLoader(url: url),
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
              style: $bodyText22Bold,
            ),
          ],
        ),
      ],
    );
  }
}
