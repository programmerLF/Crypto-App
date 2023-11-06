
import 'package:freezed_annotation/freezed_annotation.dart';
part 'beneficiary_fields_model.freezed.dart';


@freezed
class BeneficiaryFieldsModel with _$BeneficiaryFieldsModel{


  factory BeneficiaryFieldsModel({required String name, required String? nickname, required String bankName, required String ibanNumber})= _BeneficiaryFieldsModel;


}