import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/theme/data/data.dart';

import '../../data/beneficiary_fields_model.dart';



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
          borderRadius: theme.radius.asBorderRadius().regular,

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