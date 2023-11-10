
import 'package:crypto_app/features/new_beneficiary/presenttion/cubit/new_beneficiary_cubit.dart';
import 'package:crypto_app/features/new_beneficiary/presenttion/pages/review_beneficiary_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kib_design_system/kib_design_system.dart';


class ContinueButtonValidator extends StatelessWidget {

  const ContinueButtonValidator({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<NewBeneficiaryCubit>();
    return SizedBox(
      child: AppButton.primary(
        onTap: (){
          cubit.validateFields();
          if(cubit.isDataValid){
            Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) =>  ReviewBeneficiaryDetails(beneficiaryFieldsModel: cubit.beneficiaryFieldsModel)));
          }
          else{
            print("data invalid");
          }
        },
        title: "Continue",
        state:  AppButtonState.enabled,
        mainAxisSize: MainAxisSize.max,
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  final bool darkButton;

  const CustomButton({
    super.key, required this.onTap, required this.title, required this.darkButton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: darkButton == true? AppButton.primary(
        onTap: (){
          onTap();
        },
        title: title,
        state:  AppButtonState.enabled,
        mainAxisSize: MainAxisSize.max,
      ): AppButton.contrast(
    onTap: (){
    onTap();
    },
    title: title,
    state:  AppButtonState.enabled,
    mainAxisSize: MainAxisSize.max,
    ));
  }
}