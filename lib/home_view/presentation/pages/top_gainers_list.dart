import 'package:crypto_app/core/customized_text_style.dart';
import 'package:flutter/material.dart';

class TopGainers extends StatelessWidget {
  const TopGainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text("Top Gainers", style: $bodyText,),
      ),
    );
  }
}
