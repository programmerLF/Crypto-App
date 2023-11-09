import 'package:kib_design_system/kib_design_system.dart';
import 'consent_widgets.dart';

import '../../data/models/consent_active_sessions_model.dart';



class ConsentSessionsBox extends StatelessWidget {
  final ConsentActiveSessionModel consentActiveSessionModel;

  const ConsentSessionsBox({
    super.key, required this.consentActiveSessionModel,

  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
      margin: const AppEdgeInsets.only(bottom: AppGapSize.m),
      padding: const AppEdgeInsets.m(),
      decoration: BoxDecoration(
        color: theme.colors.surface,
        borderRadius: BorderRadius.all(theme.radius.regular),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConsentExternalProvider(
            icon: consentActiveSessionModel.bankIcon,
            providerName: consentActiveSessionModel.bankName,
            date: consentActiveSessionModel.sessionRequestDate,
          ),
          const AppGap.m(),
          ConsentPermissionsBox(
              permissions: consentActiveSessionModel.permissions),
          const AppGap.m(),
          ConsentOtpBox(
            otp: consentActiveSessionModel.otp,
          ),
          const AppGap.xs(),
          OtpExpirationDuration(
            otpTime: consentActiveSessionModel.otpTime,
          ),
        ],
      ),
    );
  }
}