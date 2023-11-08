import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';

import '../../data/beneficiary_fields_model.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../pages/beneficiary_success_screen.dart';
import 'beneficiary_widgets.dart';

class ReviewBeneficiaryDetailsBody extends StatelessWidget {
  const ReviewBeneficiaryDetailsBody({
    super.key,
    required this.theme,
    required this.beneficiaryFieldsModel,
  });

  final AppThemeData theme;
  final BeneficiaryFieldsModel beneficiaryFieldsModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppContainer(
        padding: const AppEdgeInsets.m(),
        decoration: BoxDecoration(
            color: theme.colors.background,
            borderRadius: BorderRadius.only(
              topLeft: theme.radius.large20,
              topRight: theme.radius.large20,
            )),
        child: Column(
          children: [
            BeneficiaryDetailsBox(
                theme: theme, beneficiaryFieldsModel: beneficiaryFieldsModel),
            const Spacer(),
            CustomButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BeneficiarySuccessScreen(
                        beneficiaryFieldsModel: beneficiaryFieldsModel,
                      ),
                    ));
              },
              title: 'Continue',
              darkButton: true,
            ),
          ],
        ),
      ),
    );
  }
}
