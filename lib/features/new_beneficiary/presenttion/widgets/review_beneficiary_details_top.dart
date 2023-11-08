import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';

class ReviewBeneficiaryDetailsTop extends StatelessWidget {
  const ReviewBeneficiaryDetailsTop({
    super.key,
    required this.theme,
  });

  final AppThemeData theme;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: 100,
      decoration: BoxDecoration(color: theme.colors.surface),
      child: AppContainer(
        padding: AppEdgeInsets.m(),
        child: Align(
            alignment: Alignment.bottomLeft,
            child: AppText.sublineHeavy(
              "Review below details",
              color: theme.colors.textBodyPrimary,
            )),
      ),
    );
  }
}