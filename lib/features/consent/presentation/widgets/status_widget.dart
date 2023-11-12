import 'package:kib_design_system/kib_design_system.dart';

class StatusWidget extends StatelessWidget {
  final bool expired;
  const StatusWidget({super.key, required this.expired});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AccountStatus(
      alertData: AccountStatusModel(
          contentColor: expired? theme.colors.warning: theme.colors.success,
          borderColor: expired? AppColorsData.amber.shade300 : AppColorsData.sea.shade300,
          message: expired? "Expired" :"Active",
          icon: expired? Assets.icons.sandTimer: Assets.icons.checkCircle,
          backgroundColor: theme.colors.surface),
    );
  }
}
