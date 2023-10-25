part of 'crypto_coins_cubit.dart';

abstract class CryptoCoinsState extends Equatable {
  const CryptoCoinsState();
}

class Empty extends CryptoCoinsState {
  @override
  List<Object> get props => [];
}

class CryptoCoinsLoading extends CryptoCoinsState {
  @override
  List<Object?> get props => [];
}

class CryptoCoinsLoaded extends CryptoCoinsState {
  final List<CryptoCoinsModel> coinsList;

  const CryptoCoinsLoaded({required this.coinsList});

  @override
  List<Object?> get props => [coinsList];
}

class SelectedCoin extends CryptoCoinsState {
  final CryptoCoinsModel coin;

  const SelectedCoin(this.coin);

  @override
  List<Object?> get props => [coin];
}

class Error extends CryptoCoinsState {
  final String errorMsg;

  const Error({required this.errorMsg});

  @override
  List<Object?> get props => [errorMsg];
}
