import 'package:kib_design_system/kib_design_system.dart';

import 'package:kib_design_system/theme/data/data.dart';

//Great Job

class ConsentPermissionsWidget extends StatelessWidget {

  final List<String> permissions;
  const ConsentPermissionsWidget({
    super.key,
    required this.permissions,
  });



  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: AppText.captionMedium(
              "Access and permissions requested ",
              color: theme.colors.textBodySecondary,
            ),
          ),
          const AppGap.xs(),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: permissions.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: index == permissions.length-1 ? const EdgeInsets.only(bottom:0): EdgeInsets.only(bottom: theme.spacing.xxs),
                child: Row(children: [
                  AppIcon(
                    size: theme.spacing.m,
                      icon: Assets.icons.checkCircle,
                      color: theme.colors.success),
                  const AppGap.xs(),
                  AppText.captionRegular(
                    permissions[index],
                    color: theme.colors.textBodySecondary,
                  ),
                ]),
              );
            },
          ),
        ],
      ),
    );
  }
}