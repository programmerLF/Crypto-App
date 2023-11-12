import 'package:crypto_app/config/init_getit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kib_design_system/kib_design_system.dart';
import '../cubit/new_beneficiary_cubit.dart';
import '../cubit/new_beneficiary_state.dart';
import '../widgets/beneficiary_widgets.dart';

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
          return AppContainer(
            decoration: BoxDecoration(
              color: theme.colors.background,
            ),
            padding: const AppEdgeInsets.m(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      Center(child: InitialsAvatar(theme: theme)),
                      const AppGap.m(),
                      const NameTextField(),
                      const AppGap.m(),
                      const NicknameTextField(),
                      const AppGap.m(),
                      const BankNamesDropDown(),
                      const AppGap.m(),
                      const IbanNumberTextField(),
                    ],
                  ),
                ),
                const ContinueButtonValidator()
              ],
            ),
          );
        },
      ),
    );
  }
}
