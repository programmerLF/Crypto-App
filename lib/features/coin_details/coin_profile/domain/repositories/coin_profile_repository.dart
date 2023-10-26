import 'package:crypto_app/core/error/failure.dart';

import 'package:dartz/dartz.dart';

import '../../data/models/coin_profile_model.dart';

abstract class CoinProfileRepository{
  Future<Either< Failure,CoinProfileModel>> getCoinProfile({required String key});
}