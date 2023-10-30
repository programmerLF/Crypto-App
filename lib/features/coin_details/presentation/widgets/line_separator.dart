import 'package:flutter/material.dart';


class LineSeparator extends StatelessWidget {
  const LineSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      width: MediaQuery.of(context).size.width - 40,
      height: 1,
    );
  }
}