import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/theme/data/data.dart';

import '../cubit/new_beneficiary_cubit.dart';


class NameTextField extends StatelessWidget {

  const NameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<NewBeneficiaryCubit>();
    final theme = AppTheme.of(context);
    return AppContainer(
      child: AppTextField.text(
        tooltip: getText(cubit),
        tooltipTextColor:getColor(cubit ,theme),
        label: "Full Name",
        onChanged: (value) {
          context.read<NewBeneficiaryCubit>().nameChanged(value);
        },
      ),
    );
  }

  Color getColor(NewBeneficiaryCubit cubit , AppThemeData theme){
    if(cubit.enabled){
      return cubit.isNameValid == true? theme.colors.textBodySecondary : theme.colors.critical;
    }
    return theme.colors.textBodySecondary;
  }

  String? getText(NewBeneficiaryCubit cubit){
    if(cubit.enabled){
      return cubit.isNameValid == true? null: "minimum 2 characters";
    }
    return null;
  }
}