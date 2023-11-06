import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'new_beneficiary_state.dart';


@injectable
class NewBeneficiaryCubit extends Cubit<NewBeneficiaryState> {

  NewBeneficiaryCubit() : super( const NewBeneficiaryState.initial());
}
