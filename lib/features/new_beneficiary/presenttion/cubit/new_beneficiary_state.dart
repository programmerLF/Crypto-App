

import 'package:crypto_app/features/new_beneficiary/data/bank_items_model.dart';
import 'package:crypto_app/features/new_beneficiary/data/beneficiary_fields_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_beneficiary_state.freezed.dart';

@freezed
class NewBeneficiaryState with _$NewBeneficiaryState {
  const factory NewBeneficiaryState.initial() = _Initial;
  const factory NewBeneficiaryState.modelValidation(BeneficiaryFieldsModel fields) = _ModelValidation;
  const factory NewBeneficiaryState.validationEnabled(bool valid) = _ValidationEnabled;



}
