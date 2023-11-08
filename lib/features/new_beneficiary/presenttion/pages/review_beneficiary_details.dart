import 'package:crypto_app/features/new_beneficiary/data/beneficiary_fields_model.dart';

import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/theme/data/data.dart';

import '../widgets/beneficiary_widgets.dart';


class ReviewBeneficiaryDetails extends StatelessWidget {
  final BeneficiaryFieldsModel beneficiaryFieldsModel;

  const ReviewBeneficiaryDetails(
      {super.key, required this.beneficiaryFieldsModel});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Scaffold(
      backgroundColor: theme.colors.surface,
      appBar: AppBar(
        backgroundColor: theme.colors.surface,
      ),
      body: SafeArea(
        child: Column(
          children: [
            ReviewBeneficiaryDetailsTop(theme: theme),
            ReviewBeneficiaryDetailsBody(
                theme: theme, beneficiaryFieldsModel: beneficiaryFieldsModel),
          ],
        ),
      ),
    );
  }
}





class BeneficiaryDetailsBox extends StatelessWidget {
  const BeneficiaryDetailsBox({
    super.key,
    required this.theme,
    required this.beneficiaryFieldsModel,
  });

  final AppThemeData theme;
  final BeneficiaryFieldsModel beneficiaryFieldsModel;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      decoration: BoxDecoration(
          color: theme.colors.surface,
          borderRadius: const BorderRadius.all(
            Radius.circular(30.0),
          ),
          border: Border.all(
            color: theme.colors.separator,
            width: 1,
          )),
      child: Column(
        children: [
          BasicItem.divided(
            withBackground: false,
            label: "Full name",
            value: beneficiaryFieldsModel.name ?? "",
            dividerPadding: const AppEdgeInsets.only(
                left: AppGapSize.m, right: AppGapSize.m),
          ),
          BasicItem.divided(
              withBackground: false,
              label: "Nickname (optional)",
              value: beneficiaryFieldsModel.nickname ?? "",
              dividerPadding: const AppEdgeInsets.only(
                  left: AppGapSize.m, right: AppGapSize.m)),
          BasicItem.divided(
            withBackground: false,
            label: "IBAN number",
            value: beneficiaryFieldsModel.ibanNumber ?? "",
            dividerPadding: const AppEdgeInsets.only(
                left: AppGapSize.m, right: AppGapSize.m),
          ),
          BasicItem(
              withBackground: false,
              label: "Bank Name",
              value: beneficiaryFieldsModel.bankName?.bankName ?? ""),
        ],
      ),
    );
  }
}
