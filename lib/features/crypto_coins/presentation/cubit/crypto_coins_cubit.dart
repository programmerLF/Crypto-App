import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/crypto_coins_model.dart';
import '../../domain/usecases/get_crypto_coins_list.dart';

part 'crypto_coins_state.dart';


const String SERVER_ERROR_MSG = "Failed to load Cryptocurrency Coins";

@injectable
class CryptoCoinsCubit extends Cubit<CryptoCoinsState> {
  final GetCryptoCoinsList getCryptoCoinsList;
  CryptoCoinsCubit({required this.getCryptoCoinsList}) : super(CryptoCoinsLoading());


  Future<void> getCoinsList () async{
    final failureOrList = await getCryptoCoinsList();
    failureOrList.fold(
            (failure) => emit(const Error(errorMsg: SERVER_ERROR_MSG)),
            (coinsList) => emit(CryptoCoinsLoaded(coinsList: coinsList)));

  }



}
