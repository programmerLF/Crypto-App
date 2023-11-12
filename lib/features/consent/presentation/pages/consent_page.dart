
import 'package:crypto_app/features/consent/presentation/pages/consent_sessions_page.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

class ConsentPage extends StatelessWidget {
  const ConsentPage({super.key});


  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return   Center(
        child: SizedBox(
          // width: 232,
          child: AppButton.primary(
            padding:  const AppEdgeInsets.symmetric(
              horizontal: AppGapSize.xl,
              vertical: AppGapSize.s,
            ),
            sizeType: AppButtonSize.normal,
            title: 'consent',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ConsentSessionsPage()));
            },
          ),
        ),);
  }
}

