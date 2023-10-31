import 'package:crypto_app/common_widgets/common_widgets.dart';
import 'package:crypto_app/core/util/error_messages.dart';
import 'package:crypto_app/features/crypto_coins/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../config/init_getit.dart';
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
            color: Colors.grey.shade200,
            // height: MediaQuery.of(context).size.height / 4,
            child: BlocConsumer<CryptoCoinsCubit, CryptoCoinsState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (data) => LoadedCoinsList(
                    itemCount: data.coinsList.length,
                    coinsList: data.coinsList,
                  ),
                  error: (message) => ReturnedErrorMsg(msg: message.errorMsg),
                  loading: (_) => const LoadingIndicator(),
                  orElse: () => const ReturnedErrorMsg(msg: UNEXPECTED_ERROR_MSG,),
                );
              },
            ),
          )),
    );
  }
}


