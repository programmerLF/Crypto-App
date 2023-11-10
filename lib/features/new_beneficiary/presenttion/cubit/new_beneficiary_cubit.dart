import 'package:bloc/bloc.dart';
import 'package:crypto_app/features/new_beneficiary/data/bank_items_model.dart';
import 'package:crypto_app/features/new_beneficiary/data/beneficiary_fields_model.dart';
import 'package:injectable/injectable.dart';

import 'new_beneficiary_state.dart';

//Great Job Here everything perfect

@injectable
class NewBeneficiaryCubit extends Cubit<NewBeneficiaryState> {

  BeneficiaryFieldsModel beneficiaryFieldsModel = BeneficiaryFieldsModel();

  NewBeneficiaryCubit() : super(const NewBeneficiaryState.initial());

  bool enabled = false;


  void nameChanged(String? name) {
    beneficiaryFieldsModel = beneficiaryFieldsModel.copyWith(name: name);
    emit(NewBeneficiaryState.modelValidation(beneficiaryFieldsModel));
  }

  void nicknameChanged(String? nickname) {
    beneficiaryFieldsModel =
        beneficiaryFieldsModel.copyWith(nickname: nickname);
  }

  void bankChanged(BankItemsModel? bank) {
    beneficiaryFieldsModel = beneficiaryFieldsModel.copyWith(bankName: bank);
    emit(NewBeneficiaryState.modelValidation(beneficiaryFieldsModel));
  }

  void ibanNumber(String ibanNumber) {
    beneficiaryFieldsModel =
        beneficiaryFieldsModel.copyWith(ibanNumber: ibanNumber);
    emit(NewBeneficiaryState.modelValidation(beneficiaryFieldsModel));
  }

  void validateFields() {
    enabled = !isDataValid;
    emit(NewBeneficiaryState.validationEnabled(enabled));
  }

  bool get isDataValid =>
      beneficiaryFieldsModel.validateFields();

  bool get isNameValid =>
      beneficiaryFieldsModel.isNameValid();

  bool get isBankValid =>
      beneficiaryFieldsModel.isBankValid();

  bool get isIbanValid =>
      beneficiaryFieldsModel.isIbanValid();


}