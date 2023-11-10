import 'package:kib_design_system/kib_design_system.dart';


//great job, just small comment it's too dangerous to use Expanded here use it when you're calling the widget itself

class ConsentOtpNumberWidget extends StatelessWidget {
  final String otp;
  const ConsentOtpNumberWidget({
    super.key,
    required this.otp,
  });


  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Expanded(
      child: AppContainer(
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
      ),
    );
  }
}