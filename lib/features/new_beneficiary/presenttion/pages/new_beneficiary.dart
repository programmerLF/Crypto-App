import 'package:crypto_app/config/init_getit.dart';
import 'package:crypto_app/features/new_beneficiary/data/bank_items_model.dart';
import 'package:crypto_app/features/new_beneficiary/presenttion/pages/cubit/new_beneficiary_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/widgets/avatar/avatar_widget.dart';

import 'cubit/new_beneficiary_state.dart';

class NewBeneficiaryPage extends StatefulWidget {
  const NewBeneficiaryPage({super.key});

  @override
  State<NewBeneficiaryPage> createState() => _NewBeneficiaryPageState();
}

class _NewBeneficiaryPageState extends State<NewBeneficiaryPage> {
  String? initials;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return BlocProvider<NewBeneficiaryCubit>(
      create: (context) => getIt<NewBeneficiaryCubit>(),
      child: BlocConsumer<NewBeneficiaryCubit, NewBeneficiaryState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state.maybeMap(
              initial: (_) => AppContainer(
                decoration: BoxDecoration(
                  color: theme.colors.background,
                ),
                padding: const AppEdgeInsets.m(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AvatarWidget.initialName(initialName: initials ?? " ",
                      size: AvatarSize.large,
                      initialNameColor: theme.colors.textBodySecondary,),
                    const AppGap.m(),
                    AppTextField.text(

                      label: "Full Name",
                      onChanged: (value) {
                        initials = value
                            .toString()
                            .length >= 2 ? value.toString().substring(0, 2) : " ";
                        setState(() {});
                      },
                    ),
                    const AppGap.m(),
                    const AppTextField.text(
                      label: "Nickname (optional)",

                    ),
                    const AppGap.m(),
                    AppDropdown<BankItemsModel>.drawer(
                      label: "Bank name",
                      isSearchable: true,
                      searchText: "Search placeholder",
                      onSearch: (value) {
                        // setState(() {});
                      },
                      items: (searchValue) {
                        print("searchValue ${searchValue}");
                        return BankItemsModel.itemsModels.map((e) =>
                            DropdownItem(
                              leading: AppIcon(
                                icon: e.bankLogo,
                              ),
                              value: e,
                              label: e.bankName,
                            )).toList()
                            .toList();
                      },
                      onChange: (value, index) {
                        print(value.bankName);
                      },
                    ),
                    const AppGap.m(),
                    const AppTextField.text(
                      label: "IBAN number",
                    ),

                    // const AppGap.x27l(),
                    const Spacer(),
                    const SizedBox(
                        child: AppButton.primary(
                          title: "Continue",
                          state: AppButtonState.disabled,
                          mainAxisSize: MainAxisSize.max,
                        ))
                  ],
                ),
              ),

              orElse: ()=> AppContainer());


        },
      ),
    );
  }
}
