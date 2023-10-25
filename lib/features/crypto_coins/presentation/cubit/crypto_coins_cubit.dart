
import 'package:crypto_app/core/error/failure.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/crypto_coins_model.dart';
import '../../domain/usecases/get_crypto_coins_list.dart';

part 'crypto_coins_state.dart';

const String SERVER_ERROR_MSG = "Failed to load Cryptocurrency Coins";
const String CONNECTION_ERROR_MSG =
    "No Internet Connection. Connect to Internet and try again";

@injectable
class CryptoCoinsCubit extends Cubit<CryptoCoinsState> {
  final GetCryptoCoinsList _getCryptoCoinsList;

  CryptoCoinsCubit(this._getCryptoCoinsList)
      : super(CryptoCoinsLoading());

  Future<void> getCoinsList() async {
    final failureOrList = await _getCryptoCoinsList();
    failureOrList.fold(
        (failure) => emit(Error(errorMsg: _failureMessages(failure))),
        (coinsList) => emit(CryptoCoinsLoaded(coinsList: coinsList)));
  }

  // method that return error msg based on the failure type
  String _failureMessages(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_ERROR_MSG;
      case InternetConnectionFailure:
        return CONNECTION_ERROR_MSG;
      default:
        return "Unexpected Message";
    }
  }
}
