import 'package:kib_design_system/kib_design_system.dart';
import 'consent_widgets.dart';

import '../../data/models/sessions_model.dart';

class SessionsWidget extends StatelessWidget {
  final Widget _bottomWidget;
  final Widget _statusWidget;
  final SessionsModel sessionModel;
  final bool withBorder;

  SessionsWidget({
    super.key,
    required this.sessionModel,
    Widget? bottomWidget,
    Widget? statusWidget,
    this.withBorder = false,
  }) : _bottomWidget = bottomWidget ?? Container(),
        _statusWidget = statusWidget ?? Container();


  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
      margin: const AppEdgeInsets.only(bottom: AppGapSize.m),
      padding: const AppEdgeInsets.m(),
      decoration: BoxDecoration(
        color: theme.colors.surface,
        borderRadius: BorderRadius.all(theme.radius.regular),
       border: Border.all(
         color: theme.colors.separator, // Set the border color here
         width: withBorder? 1.0: 0, // Set the border width if needed
       ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConsentExternalProviderWidget(
            icon: sessionModel.bankIcon,
            providerName: sessionModel.bankName,
            date: sessionModel.sessionRequestDate,
            statusWidget: _statusWidget,
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
