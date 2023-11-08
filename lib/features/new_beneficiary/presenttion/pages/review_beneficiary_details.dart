import 'package:crypto_app/features/new_beneficiary/data/beneficiary_fields_model.dart';

import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';
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
