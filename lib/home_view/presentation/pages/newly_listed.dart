import 'package:crypto_app/core/customized_text_style.dart';
import 'package:flutter/material.dart';

class NewlyListed extends StatelessWidget {
  const NewlyListed({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text("Newly Listed", style: $bodyText,),
      ),
    );
  }
}
