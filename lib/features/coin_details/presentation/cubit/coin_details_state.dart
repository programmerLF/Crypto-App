

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/coin_profile_model.dart';
import '../../data/models/coin_quote_model.dart';

part 'coin_details_state.freezed.dart';

@freezed
class CoinDetailsState with _$CoinDetailsState {
  factory CoinDetailsState.empty() = _Empty;

  factory CoinDetailsState.loading() = _Loading;

  factory CoinDetailsState.loaded({
    required CoinProfileModel? coinProfile,
    required CoinQuoteModel? coinQuote,
  }) = _Loaded;

  factory CoinDetailsState.error({required String errorMsg}) = _Error;
}
