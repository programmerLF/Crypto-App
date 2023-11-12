import 'package:kib_design_system/kib_design_system.dart';

class OtpExpirationMsgWidget extends StatelessWidget {
  const OtpExpirationMsgWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Center(
      child: AppContainer(
        padding: const AppEdgeInsets.m(),
        //const AppEdgeInsets.only(left: AppGapSize.x7l, bottom: AppGapSize.xs, right: AppGapSize.x7l),
        child: AppText.smallMedium(
          "If your OTP expired you may request it \n again from external party application",
          color: theme.colors.textBodySecondary,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}