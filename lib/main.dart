import 'package:crypto_app/home_view/presentation/pages/home_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'config/init_getit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  configureDependencies();

  runApp(EasyLocalization(
      supportedLocales: const [
        Locale("en"),
        Locale("ar"),
      ],
      path: 'assets/translations',
      assetLoader: const JsonAssetLoader(),
      fallbackLocale: const Locale('en'),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppResponsiveTheme(
        lightColorsPallet: AppColorsData.light().copyWith(
            actionablePrimary: Colors.blueGrey,
            actionableSecondary: Colors.grey.shade800,

            ),
        //   darkColorsPallet: AppColorsData.dark(
        //
        //   ),
        colorMode: ThemeMode.light,
        child: MaterialApp(
          title: 'Cryptocurrency App',
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: HomePage(),
        ));
  }
}
