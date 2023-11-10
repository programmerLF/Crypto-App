import 'package:kib_design_system/kib_design_system.dart';
import '../../data/models/consent_active_sessions_model.dart';
import 'consent_widgets.dart';



class SessionsBottomWidget extends StatelessWidget {
  const SessionsBottomWidget({
    super.key,
    required this.consentActiveSessionModel,
  });

  final SessionsModel consentActiveSessionModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppGap.m(),
        ConsentOtpWidget(
          otp: consentActiveSessionModel.otp,
        ),
        const AppGap.xs(),
        OtpExpirationDurationWidget(
          otpTime: consentActiveSessionModel.otpTime,
        ),
      ],
    );
  }
}