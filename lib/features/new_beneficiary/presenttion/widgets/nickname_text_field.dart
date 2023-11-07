

import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';



class NicknameTextField extends StatelessWidget {
  final Function(String nickname) onChanged;
  const NicknameTextField({
    super.key, required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return  AppTextField.text(
      onChanged: (value) => onChanged(value),
      label: "Nickname (optional)",

    );
  }
}