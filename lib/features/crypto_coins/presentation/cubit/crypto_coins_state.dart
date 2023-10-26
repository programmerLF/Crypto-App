import 'package:crypto_app/features/crypto_coins/data/models/crypto_coins_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_coins_state.freezed.dart';

@freezed
class CryptoCoinsState with _$CryptoCoinsState {
 factory CryptoCoinsState.empty() = _Empty;
 factory CryptoCoinsState.loading() = _Loading;
 factory CryptoCoinsState.loaded(List<CryptoCoinsModel> coinsList) = _Loaded;
 factory CryptoCoinsState.selectedCoin(CryptoCoinsModel coin) = _SelectedCoin;
 factory CryptoCoinsState.error({required String errorMsg}) = _Error;
}

