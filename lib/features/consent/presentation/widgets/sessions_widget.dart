import 'package:kib_design_system/kib_design_system.dart';
import 'consent_widgets.dart';

import '../../data/models/consent_active_sessions_model.dart';

class SessionsWidget extends StatelessWidget {
  final Widget _bottomWidget;
  final SessionsModel sessionModel;

  SessionsWidget({
    super.key,
    required this.sessionModel,
    Widget? bottomWidget,
  }) : _bottomWidget = bottomWidget ?? Container();

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
      margin: const AppEdgeInsets.only(bottom: AppGapSize.m),
      padding: const AppEdgeInsets.m(),
      decoration: BoxDecoration(
        color: theme.colors.surface,
        borderRadius: BorderRadius.all(theme.radius.regular),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConsentExternalProviderWidget(
            icon: sessionModel.bankIcon,
            providerName: sessionModel.bankName,
            date: sessionModel.sessionRequestDate,
          ),
          const AppGap.m(),
          ConsentPermissionsWidget(permissions: sessionModel.permissions),
          //SessionsBottomWidget(consentActiveSessionModel: sessionModel),
          _bottomWidget,
        ],
      ),
    );
  }
}
