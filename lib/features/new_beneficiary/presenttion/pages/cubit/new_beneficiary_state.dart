

import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_beneficiary_state.freezed.dart';

@freezed
class NewBeneficiaryState with _$NewBeneficiaryState {
  const factory NewBeneficiaryState.initial() = _Initial;
  const factory NewBeneficiaryState.nameChanged(String name) = _NameChanged;
  const factory NewBeneficiaryState.nicknameChanged(String nickName) = _NicknameChanged;
  const factory NewBeneficiaryState.bankChosen(String bankName) = _BankChosen;
  const factory NewBeneficiaryState.ibanNumberChanged(String ibanNumber) = _IbanNumberChanged;


}
