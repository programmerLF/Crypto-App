import 'package:kib_design_system/kib_design_system.dart';


class OtpExpirationDurationWidget extends StatelessWidget {
  final String otpTime;
  const OtpExpirationDurationWidget({
    super.key, required this.otpTime,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText.smallRegular(
            "OTP expires in",
            color: theme.colors.textBodySecondary,
          ),
          const AppGap.xxs(),
          AppText.smallMedium(
            "5:00 minutes",
            color: theme.colors.textBodyPrimary,
          ),
        ],
      ),
    );
  }
}