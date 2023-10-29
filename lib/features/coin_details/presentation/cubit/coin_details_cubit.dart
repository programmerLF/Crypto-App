import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/coin_details/coin_profile/data/models/coin_profile_model.dart';
import 'package:crypto_app/features/coin_details/coin_profile/domain/usecases/get_coin_profile.dart';
import 'package:crypto_app/features/coin_details/coin_quote/data/models/coin_quote_model.dart';
import 'package:crypto_app/features/coin_details/coin_quote/domain/usecases/get_coin_quote.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'coin_details_state.dart';

const String SERVER_ERROR_MSG = "Failed to load Coins details";
const String CONNECTION_ERROR_MSG =
    "No Internet Connection. Connect to Internet and try again";


@injectable
class CoinDetailsCubit extends Cubit<CoinDetailsState> {
  final GetCoinProfile _getCoinProfileUseCase;
  final GetCoinQuote _getCoinQuoteUseCase;


  CoinProfileModel? _coinProfileSuccess;
  CoinQuoteModel? _coinQuoteSuccess;

  CoinDetailsCubit( this._getCoinProfileUseCase, this._getCoinQuoteUseCase)
      : super(CoinDetailsState.loading());

  Future<void> getCoinDetails(String key) async {
    await Future.wait([
      _getCoinProfile(key),
      _getCoinQuote(key),
    ]).whenComplete(() {
      emit(CoinDetailsState.loaded(
          coinProfile: _coinProfileSuccess, coinQuote: _coinQuoteSuccess));
    });
  }

  Future<Either<Failure, CoinProfileModel>> _getCoinProfile(String key) async {
    final coinProfile = await _getCoinProfileUseCase(key: key);
    coinProfile.fold(
      (failure) =>
          emit(CoinDetailsState.error(errorMsg: _failureMessages(failure))),
      (coinProfileResponse) => _coinProfileSuccess = coinProfileResponse,
    );
    return coinProfile;
  }

  Future<Either<Failure, CoinQuoteModel>> _getCoinQuote(String key) async {
    final coinQuote = await _getCoinQuoteUseCase(key: key);

    coinQuote.fold(
        (failure) =>
            emit(CoinDetailsState.error(errorMsg: _failureMessages(failure))),
        (coinQuoteResponse) => _coinQuoteSuccess = coinQuoteResponse);

    return coinQuote;
  }

  // method that return error msg based on the failure type
  String _failureMessages(Failure failure) {
    return failure.maybeMap(
      server: (_) => SERVER_ERROR_MSG,
      connection: (_) => CONNECTION_ERROR_MSG,
      orElse: () => "Unexpected Message",
    );
  }
}
