import 'package:kib_design_system/kib_design_system.dart';
import 'consent_widgets.dart';

class ConsentExternalProviderWidget extends StatelessWidget {

  final SvgGenImage icon;
  final String providerName;
  final String date;
  final Widget _statusWidget;

    ConsentExternalProviderWidget({
    super.key,
    required this.icon,
    required this.providerName,
    required this.date,
    Widget? statusWidget,
  }): _statusWidget = statusWidget ??  Container();

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Row(
      children: [
        AppCategoryIcon(
          padding: const AppEdgeInsets.xs(),
          backgroundColor: AppColorsData.azureLight100,
          icon: AppIcon(icon: icon, color: AppColorsData.azureLight[500]),
        ),
        const AppGap.s(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.bodyBold(
                providerName,
                color: theme.colors.actionableSecondary,
              ),
              AppText.smallRegular(
                "Requested in: $date",
                color: theme.colors.textBodySecondary,
              )
            ],
          ),
        ),
        _statusWidget,

      ],
    );
  }
}


