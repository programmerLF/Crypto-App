import 'package:crypto_app/core/customized_text_style.dart';
import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text("Trending", style: $bodyText,),
      ),
    );
  }
}
