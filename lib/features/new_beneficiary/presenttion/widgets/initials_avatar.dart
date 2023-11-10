import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/widgets/avatar/avatar_widget.dart';

import '../cubit/new_beneficiary_cubit.dart';

class InitialsAvatar extends StatelessWidget {
  const InitialsAvatar({
    super.key,
    required this.theme,
  });

  final AppThemeData theme;

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<NewBeneficiaryCubit>();
    final initials = cubit.beneficiaryFieldsModel.name ?? " ";
    return AvatarWidget.initialName(
      initialName: initials.substring(0, min(2, initials.length)),
      size: AvatarSize.large,
      initialNameColor: theme.colors.textBodySecondary,
    );
  }
}
