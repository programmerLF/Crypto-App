import 'package:crypto_app/features/new_beneficiary/data/bank_items_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_fields_model.freezed.dart';

@freezed
class BeneficiaryFieldsModel with _$BeneficiaryFieldsModel {
   BeneficiaryFieldsModel._();
  factory BeneficiaryFieldsModel(
      {String? name,
      String? nickname,
      BankItemsModel? bankName,
      String? ibanNumber}) = _BeneficiaryFieldsModel;

   bool _validateName() {
    if (name == null || (name?.length??0) < 2) {
      return false;
    } else {
      return true;
    }
  }

   bool _validateBankName() {
    if (bankName == null) {
      return false;
    } else {
      return true;
    }
  }
  // KW81CBKU0000000000001234560101
   bool _validateIbanNumber() {
    if (ibanNumber == null || (ibanNumber?.length??0) != 30 ) {
      return false;
    } else {
      String ibanCountryCode = ibanNumber?.substring(0, 2)??'';
      String ibanCheckSum = ibanNumber?.substring(2, 4)??'';
      String ibanSwiftCode = ibanNumber?.substring(4, 8)??'';
      String ibanAccountNumber = ibanNumber?.substring(8)??'';
      if ((!ibanCountryCode.contains(RegExp('^[a-zA-Z]+')) &&
          !ibanCheckSum.contains(RegExp(r'^[0-9]+$')) &&
          !ibanSwiftCode.contains(RegExp('^[a-zA-Z]+')) &&
          !ibanAccountNumber.contains(RegExp('[a-zA-Z0-9]') )) || ibanAccountNumber.contains(RegExp(' '))) {
        return false;
      } else {
        return true;
      }
    }
  }

   bool isNameValid(){
    return _validateName();
  }
   bool isBankValid(){
    return _validateBankName();
  }
   bool isIbanValid(){
    return _validateIbanNumber();
  }

   bool validateFields() {
    if (!_validateName()) {
      return false;
    } else if (!_validateBankName()) {

      return false;
    } else if (!_validateIbanNumber()) {

      return false;
    } else {
      return true;
    }
  }
}
