import 'package:crypto_app/core/util/alert_msgs.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/theme/data/data.dart';

import '../widgets/consent_widgets.dart';

class ActiveSessions extends StatelessWidget {
  const ActiveSessions({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> permissions = [
      "Account balance",
      "Account details",
      "Transaction details"
    ];
    final theme = AppTheme.of(context);
    return AppContainer(
      padding: const AppEdgeInsets.m(),
      decoration: BoxDecoration(
        color: theme.colors.background,
      ),
      child: Column(
        children: [
          AppAlert.information(
            title: "Disclaimer",
            content: CONSENT_ACTIVE_SESSIONS_ALERT,
            sticky: true,
            onCloseSticky: () {},
          ),
          const AppGap.m(),
          AppContainer(
            padding: const AppEdgeInsets.m(),
            decoration: BoxDecoration(
              color: theme.colors.surface,
              borderRadius: BorderRadius.all(theme.radius.regular),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ConsentExternalProvider(theme: theme, icon: Assets.icons.bank, providerName: "BBK bank",date: "10 July 2023",),
                const AppGap.m(),
                ConsentPermissionsBox(theme: theme, permissions: permissions),
              ],
            ),
          )
        ],
      ),
    );
  }
}




