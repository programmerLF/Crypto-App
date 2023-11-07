import 'package:crypto_app/features/new_beneficiary/data/beneficiary_fields_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../cubit/new_beneficiary_cubit.dart';


class ReviewBeneficiaryDetails extends StatelessWidget {
  
  final BeneficiaryFieldsModel beneficiaryFieldsModel;
  const ReviewBeneficiaryDetails({super.key, required this.beneficiaryFieldsModel});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Scaffold(
      backgroundColor: theme.colors.background,
      appBar: AppBar(),
      body: AppContainer(
        padding: AppEdgeInsets.m(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BasicItem.divided(label: "Full name", value: beneficiaryFieldsModel.name??""),
              BasicItem.divided(label: "Nickname (optional)", value: beneficiaryFieldsModel.nickname??""),

              BasicItem.divided(label: "IBAN number", value: beneficiaryFieldsModel.ibanNumber??""),
              BasicItem.divided(label: "Bank Name", value: beneficiaryFieldsModel.bankName?.bankName??""),
            ],
          ),

      ),
    );
  }
}
