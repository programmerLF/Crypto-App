import 'package:crypto_app/home_view/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'config/init_getit.dart';
import 'features/crypto_coins/presentation/pages/home_page.dart';

void main() {
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cryptocurrency App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
