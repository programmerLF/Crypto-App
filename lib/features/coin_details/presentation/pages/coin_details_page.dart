import 'package:crypto_app/common_widgets/common_widgets.dart';
import 'package:crypto_app/features/coin_details/presentation/widgets/coins_details_widgets.dart';
import 'package:crypto_app/config/init_getit.dart';
import 'package:crypto_app/core/customized_text_style.dart';
import 'package:crypto_app/core/util/error_messages.dart';
import 'package:crypto_app/features/coin_details/presentation/cubit/coin_details_cubit.dart';
import 'package:crypto_app/features/coin_details/presentation/cubit/coin_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kib_design_system/components/error_widgets/error_widgets.dart';
import 'package:kib_design_system/kib_design_system.dart';




class CoinDetailsPage extends StatelessWidget {
  final String coinKey;
  final String logoUrl;

  const CoinDetailsPage(
      {required this.coinKey, super.key, required this.logoUrl});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Scaffold(
      backgroundColor: theme.colors.background,
        appBar: AppBar(
          foregroundColor: theme.colors.textBodyPrimary,
          backgroundColor: theme.colors.background,
          title:  AppText.titleHeavy(
            "Coin Details",
            color: theme.colors.textBodyPrimary,
          ),
        ),
        body: BlocProvider<CoinDetailsCubit>(
          create: (_) =>
          getIt<CoinDetailsCubit>()
            ..getCoinDetails(coinKey),
          child: AppContainer(
            decoration: BoxDecoration(
              color: theme.colors.surface,
            ),
            child: BlocConsumer<CoinDetailsCubit, CoinDetailsState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.maybeMap(
                    loading: (_) => const LoadingIndicator(),
                    loaded: (data) {
                      return LoadedCoinDetails(logoUrl: logoUrl, coinProfile: data.coinProfile, coinQuote: data.coinQuote,);
                    },
                    error: (error) => AppErrorWidget.loadingFailed(
                        title: "Loading Failed",
                        content: error.errorMsg,
                        buttonText: "Try again",
                        onTryAgain: (){
                          context.read<CoinDetailsCubit>().getCoinDetails(coinKey);
                        }),
                    orElse: () =>
                     AppErrorWidget.loadingFailed(
                title: "Loading Failed",
                content: UNEXPECTED_ERROR_MSG,
                buttonText: "Try again",
                onTryAgain: (){
                context.read<CoinDetailsCubit>().getCoinDetails(coinKey);
                }),
                );},
            ),
          ),
        ));
  }
}








