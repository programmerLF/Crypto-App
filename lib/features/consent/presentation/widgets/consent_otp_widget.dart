import 'package:kib_design_system/kib_design_system.dart';
import 'consent_widgets.dart';
class ConsentOtpWidget extends StatelessWidget {
  final String otp;

  const ConsentOtpWidget({
    super.key,
    required this.otp,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
      padding: const AppEdgeInsets.symmetric(
          horizontal: AppGapSize.m, vertical: AppGapSize.s),
      decoration: BoxDecoration(
        color: theme.colors.background,
        borderRadius: BorderRadius.all(theme.radius.medium),
      ),
      child: Row(
        children: [
          Expanded(
              child: ConsentOtpNumberWidget(
            otp: otp,
          )),
          const CopyOtpWidget(),
        ],
      ),
    );
  }
}


