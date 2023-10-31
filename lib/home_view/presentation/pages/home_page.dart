import 'package:crypto_app/home_view/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../../features/crypto_coins/presentation/pages/coins_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: const Center(
            child: Column(children: [
          HomePageTop(),
          CoinsListPage(),
        ])));
  }
}


