import 'dart:io';

import 'package:crypto_app/common_widgets/common_widgets.dart';
import 'package:crypto_app/features/crypto_coins/presentation/pages/coin_details_page.dart';
import 'package:crypto_app/features/crypto_coins/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../config/init_getit.dart';
import '../../data/models/crypto_coins_model.dart';
import '../cubit/crypto_coins_cubit.dart';
import '../cubit/crypto_coins_state.dart';

class CoinsListPage extends StatelessWidget {
  const CoinsListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CryptoCoinsCubit>(
      create: (_) => getIt<CryptoCoinsCubit>()..getCoinsList(),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // height: MediaQuery.of(context).size.height / 4,
            child: BlocConsumer<CryptoCoinsCubit, CryptoCoinsState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (data) => Container(
                    height: Platform.isIOS? MediaQuery.of(context).size.height - 250 : MediaQuery.of(context).size.height - 230,
                    child: ListView.builder(
                      itemCount: data.coinsList.length,
                      itemBuilder: (context, index) {
                        List coinsList = data.coinsList;
                        CryptoCoinsModel coin = coinsList[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  CoinDetailsPage()));
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: CoinCard(coin: coin),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  error: (message) => Text(message.errorMsg),
                  loading: (_) => const LoadingIndicator(),
                  orElse: () => Container(),
                );
              },
            ),
          )),
    );
  }
}
