
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/theme/data/data.dart';



class ConsentExternalProvider extends StatelessWidget {
  final AppThemeData theme;
  final SvgGenImage icon;
  final String providerName;
  final String date;

  const ConsentExternalProvider({
    super.key,
    required this.theme, required this.icon, required this.providerName, required this.date,
  });



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppCategoryIcon(
            padding: AppEdgeInsets.xs(),
            backgroundColor: AppColorsData.azureLight100,
            icon: AppIcon(
                icon: icon,
                color: theme.colors.actionableSecondary)),
        const AppGap.s(),
        Column(
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
        )
      ],
    );
  }
}