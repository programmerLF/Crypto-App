import 'package:crypto_app/features/consent/presentation/pages/active_sessions_page.dart';
import 'package:crypto_app/features/consent/presentation/pages/history_sessions_page.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../widgets/consent_widgets.dart';


class ConsentSessionsPage extends StatefulWidget {
  const ConsentSessionsPage({super.key});

  @override
  State<ConsentSessionsPage> createState() => _ConsentSessionsPageState();
}

class _ConsentSessionsPageState extends State<ConsentSessionsPage>
    with TickerProviderStateMixin {
  final PageController controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Scaffold(
      backgroundColor: theme.colors.background,
      body: SafeArea(
        child: AppContainer(
          padding: const AppEdgeInsets.m(),
          child: Column(
            children: [
              ConsentTabsWidget(pageIndex: pageIndex, controller: controller),
              const AppGap.m(),
              Expanded(
                child: PageView(
                    controller: controller,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      ActiveSessionsPage(),
                      HistorySessionsPage(),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

