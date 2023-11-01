import 'package:crypto_app/core/customized_text_style.dart';
import 'package:flutter/material.dart';

class MostVisited extends StatelessWidget {
  const MostVisited({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text("Most Visited", style: $bodyText,),
      ),
    );
  }
}
