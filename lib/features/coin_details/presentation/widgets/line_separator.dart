import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';


class LineSeparator extends StatelessWidget {
  const LineSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      color: theme.colors.separator,
      width: MediaQuery.of(context).size.width - 40,
      height: 2,
    );
  }
}