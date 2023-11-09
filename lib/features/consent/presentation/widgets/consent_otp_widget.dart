import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/widgets/buttons/secondary_button_layout.dart';

import 'consent_otp_number_widget.dart';

class ConsentOtpWidget extends StatelessWidget {

  final String otp;
  const ConsentOtpWidget({
    super.key, required this.otp,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
      padding: const AppEdgeInsets.symmetric(horizontal: AppGapSize.m, vertical: AppGapSize.s),
      decoration: BoxDecoration(
        color: theme.colors.background,
        borderRadius: BorderRadius.all(theme.radius.medium),
      ),
      child: Row(
        children: [
          ConsentOtpNumberWidget(otp: otp,),
          AppSecondaryButtonLayout(
            padding: const AppEdgeInsets.symmetric(horizontal: AppGapSize.xl, vertical: AppGapSize.xxs),
            textColor: AppColorsData.azureLight[500],
            title: "Copy OTP",
            sizeType: AppButtonSize.small,
            borderColor: AppColorsData.azureLight[500],
            trailingWidget: AppIcon(icon: Assets.icons.copy, size: theme.spacing.l,color: AppColorsData.azureLight[500],),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}


