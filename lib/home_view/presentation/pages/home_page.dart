import 'package:crypto_app/home_view/presentation/pages/most_visited.dart';
import 'package:crypto_app/home_view/presentation/pages/newly_listed.dart';
import 'package:crypto_app/home_view/presentation/pages/top_gainers_list.dart';
import 'package:crypto_app/home_view/presentation/pages/top_losers.dart';
import 'package:crypto_app/home_view/presentation/pages/trending_list.dart';
import 'package:crypto_app/home_view/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Center(
              child: Column(children: [
            HomePageTop(
              onTapClicked: (page) {
                controller.animateToPage(page,
                    duration: const Duration(microseconds: 200),
                    curve: Curves.linear);
              },
            ),
            Container(
              height: Platform.isIOS
                  ? MediaQuery.of(context).size.height -
                      (MediaQuery.of(context).size.height / 2.85)
                  : MediaQuery.of(context).size.height -
                      (MediaQuery.of(context).size.height / 3.5),
              child: PageView(
                  controller: controller,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    CoinsListPage(),
                    Trending(),
                    TopGainers(),
                    TopLosers(),
                    MostVisited(),
                    NewlyListed(),
                  ]),
            ),
          ])),
        ));
  }
}
