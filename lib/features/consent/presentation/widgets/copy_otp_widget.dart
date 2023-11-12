import 'package:kib_design_system/kib_design_system.dart';




class CopyOtpWidget extends StatelessWidget {
  const CopyOtpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppButton.secondary(
      padding: const AppEdgeInsets.symmetric(
          horizontal: AppGapSize.xl, vertical: AppGapSize.xxs),
      titleColor: AppColorsData.azureLight[500],
      title: "Copy OTP",
      sizeType: AppButtonSize.small,
      borderColor: AppColorsData.azureLight[500],
      trailingWidget: AppIcon(
        icon: Assets.icons.copy,
        size: theme.spacing.l,
        color: AppColorsData.azureLight[500],
      ),
      onTap: () {},
    );
  }
}