
import 'package:crypto_app/features/new_beneficiary/presenttion/cubit/new_beneficiary_cubit.dart';
import 'package:crypto_app/features/new_beneficiary/presenttion/pages/review_beneficiary_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kib_design_system/kib_design_system.dart';


class ContinueButton extends StatelessWidget {

  const ContinueButton({
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