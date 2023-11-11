

import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';


//perfect but you don't need to pass Function(String nickname) onChanged  from outside
// the purpose of having each widget in separate file to make it contains all the logic inside
//the only case that makes you pass the functions or the data from outside if this widget used in multiple places and each place has different business logic

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