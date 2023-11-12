

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../cubit/new_beneficiary_cubit.dart';



class NicknameTextField extends StatelessWidget {

  const NicknameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return  AppTextField.text(
      onChanged: (value) {
        context.read<NewBeneficiaryCubit>().nicknameChanged(value);},
      label: "Nickname (optional)",

    );
  }
}