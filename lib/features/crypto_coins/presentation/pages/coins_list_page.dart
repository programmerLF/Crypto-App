import 'package:crypto_app/common_widgets/common_widgets.dart';
import 'package:crypto_app/core/util/error_messages.dart';
import 'package:crypto_app/features/crypto_coins/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kib_design_system/components/error_widgets/error_widgets.dart';
import '../../../../config/init_getit.dart';
import '../cubit/crypto_coins_cubit.dart';
import '../cubit/crypto_coins_state.dart';
import 'package:kib_design_system/kib_design_system.dart';

class CoinsListPage extends StatelessWidget {
  const CoinsListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return BlocProvider<CryptoCoinsCubit>(
      create: (_) => getIt<CryptoCoinsCubit>()..getCoinsList(),
      child: AppContainer(
        decoration: BoxDecoration(
          color: theme.colors.background
        ),
        padding: const AppEdgeInsets.xs(),
        child: BlocConsumer<CryptoCoinsCubit, CryptoCoinsState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
              loaded: (data) => LoadedCoinsList(
                itemCount: data.coinsList.length,
                coinsList: data.coinsList,
              ),
              error: (error) => AppErrorWidget.loadingFailed(
                  title: "Loading Failed",
                  content: error.errorMsg,
                  buttonText: "Try again",
                  onTryAgain: (){
                    context.read<CryptoCoinsCubit>().getCoinsList();
                  }),
              loading: (_) => const LoadingIndicator(),
              orElse: () => const ReturnedErrorMsg(msg: UNEXPECTED_ERROR_MSG,),
            );
          },
        ),
      ),
    );
  }
}


