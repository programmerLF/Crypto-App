import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/crypto_coins/presentation/cubit/crypto_coins_state.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_crypto_coins_list.dart';

const String SERVER_ERROR_MSG = "Failed to load Cryptocurrency Coins";
const String CONNECTION_ERROR_MSG = "No Internet Connection. Connect to Internet and try again";

@injectable
class CryptoCoinsCubit extends Cubit<CryptoCoinsState> {
  final GetCryptoCoinsList _getCryptoCoinsList;

  CryptoCoinsCubit(this._getCryptoCoinsList)
      : super(CryptoCoinsState.loading());

  Future<void> getCoinsList() async {
    final failureOrList = await _getCryptoCoinsList();
    failureOrList.fold(
        (failure) =>
            emit(CryptoCoinsState.error(errorMsg: _failureMessages(failure))),
        (coinsList) => emit(CryptoCoinsState.loaded(coinsList)));
  }

  // method that return error msg based on the failure type
  String _failureMessages(Failure failure) {
   return failure.maybeMap(
      server: (_)=> SERVER_ERROR_MSG,
      connection: (_)=> CONNECTION_ERROR_MSG,
      orElse: () => "Unexpected Message",
    );

  }
}
