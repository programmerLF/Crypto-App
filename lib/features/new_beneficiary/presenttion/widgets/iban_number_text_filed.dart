
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/theme/data/data.dart';

import '../cubit/new_beneficiary_cubit.dart';

class IbanNumberTextField extends StatelessWidget {
  final Function(String iban) onChanged;
  const IbanNumberTextField({
    super.key, required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final cubit = context.watch<NewBeneficiaryCubit>();
    return  AppTextField.text(
      tooltip: ibanErrorMsg(cubit),
      tooltipTextColor: ibanErrorMsgColor(cubit, theme),
      onChanged: (value) => onChanged(value),
      label: "IBAN number",
    );
  }
}

String? ibanErrorMsg(NewBeneficiaryCubit cubit){
  if (cubit.enabled){
    return cubit.isIbanValid == true? null: "Wrong IBAN, please check";
  }
  else{
    return null;
  }
}

Color ibanErrorMsgColor(NewBeneficiaryCubit cubit , AppThemeData theme){
  if(cubit.enabled){
    return cubit.isIbanValid == true? theme.colors.textBodySecondary : theme.colors.critical;
  }
  return theme.colors.textBodySecondary;
}

