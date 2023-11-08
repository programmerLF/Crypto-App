import 'package:crypto_app/features/new_beneficiary/data/beneficiary_fields_model.dart';
import 'package:crypto_app/features/new_beneficiary/presenttion/widgets/beneficiary_widgets.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

class BeneficiarySuccessScreen extends StatelessWidget {
  final BeneficiaryFieldsModel beneficiaryFieldsModel;
  const BeneficiarySuccessScreen({super.key, required this.beneficiaryFieldsModel});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Scaffold(
      // backgroundColor: theme.colors.background,
      body: AppContainer(

        child: ProcessStateScreen(subLine: "Beneficiary added",
          description: "You have successfully added the beneficiary",

          bottomWidget: CustomButton(onTap: (){},title: 'Done', darkButton: false,),
          child: AppContainer(
              padding: AppEdgeInsets.m(),
              child: BeneficiaryDetailsBox(beneficiaryFieldsModel: beneficiaryFieldsModel, theme: theme,)),

        ),
      ),
    );
  }
}
