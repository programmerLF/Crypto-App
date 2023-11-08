import 'package:crypto_app/features/consent/presentation/pages/active_sessions_page.dart';
import 'package:crypto_app/features/new_beneficiary/presenttion/pages/new_beneficiary.dart';
import 'package:crypto_app/home_view/presentation/pages/most_visited.dart';
import 'package:crypto_app/home_view/presentation/pages/newly_listed.dart';
import 'package:crypto_app/home_view/presentation/pages/top_gainers_list.dart';
import 'package:crypto_app/home_view/presentation/pages/top_losers.dart';
import 'package:crypto_app/home_view/presentation/pages/trending_list.dart';
import 'package:crypto_app/home_view/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/theme.dart';
import 'package:kib_design_system/widgets/base/container.dart';
import 'dart:io';

import '../../../features/crypto_coins/presentation/pages/coins_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Scaffold(
        backgroundColor: theme.colors.background,
        body: AppContainer(
           decoration: BoxDecoration(
             // color: theme.colors.surface,
           ),
          child: SafeArea(
            child: Center(
                child: Column(children: [
              HomePageTop(
                onTapClicked: (page) {
                  controller.animateToPage(page,
                      duration: const Duration(microseconds: 200),
                      curve: Curves.linear);
                },
              ),
              Expanded(
                child: PageView(
                    controller: controller,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      CoinsListPage(),
                      NewBeneficiaryPage(),
                      ActiveSessions(),
                      TopLosers(),
                      MostVisited(),
                      NewlyListed(),
                    ]),
              ),
            ])),
          ),
        ));
  }
}
