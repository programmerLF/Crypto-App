import 'package:kib_design_system/kib_design_system.dart';

import '../../../../core/alert_msgs.dart';



class ConsentAlertWidget extends StatelessWidget {
  const ConsentAlertWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      margin: const AppEdgeInsets.only(bottom: AppGapSize.m,),
      child: AppAlert.information(
        padding: const AppEdgeInsets.s(),
        title: "Disclaimer",
        content: CONSENT_ACTIVE_SESSIONS_ALERT,
        sticky: true,
        onCloseSticky: () {},
      ),
    );
  }
}
