import 'package:kib_design_system/kib_design_system.dart';



class ConsentOtpNumberWidget extends StatelessWidget {
  final String otp;
  const ConsentOtpNumberWidget({
    super.key,
    required this.otp,
  });


  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
      child: Row(
        children: [
          AppText.bodyRegular(
            "OTP",
            color: theme.colors.textBodySecondary,
          ),
          const AppGap.xs(),
          AppText.bodyBold(
            otp,
            color: theme.colors.textBodySecondary,
          ),
        ],
      ),
    );
  }
}