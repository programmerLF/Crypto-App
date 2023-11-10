import 'package:crypto_app/core/alert_msgs.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../../data/models/consent_active_sessions_model.dart';
import '../widgets/consent_widgets.dart';

class ActiveSessionsPage extends StatelessWidget {
  const ActiveSessionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
      padding: const AppEdgeInsets.m(),
      decoration: BoxDecoration(
        color: theme.colors.background,
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                const ConsentAlertWidget(
                  title: "Disclaimer",
                  content: CONSENT_ACTIVE_SESSIONS_ALERT,
                ),
                const AppGap.m(),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: SessionsModel.activeSessionsList
                        .length,
                    itemBuilder: (context, index) {
                      return SessionsWidget(
                        sessionModel: SessionsModel.activeSessionsList[index],
                        bottomWidget: SessionsBottomWidget(consentActiveSessionModel: SessionsModel.activeSessionsList[index]),
                      );
                    }),
                const OtpExpirationMsgWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


