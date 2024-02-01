import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_learn/features/authantication/data/repos/auth_repo_implemantation.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/sign_up_cubit/sign_up_cubit_state.dart';

class SignUpcubit extends Cubit<SignUpCubitState> {
  SignUpcubit() : super(SignUpCubitState());
  AuthRepoImplemantation authRepoImp = AuthRepoImplemantation();
  void signUpWithEmailAndPassword({required email, required password}) async {
    emit(SignUpIsLoadingCubitStatec());
    var result =
        await authRepoImp.signUpEmailPassword(email: email, password: password);
    if (result == 'success') {
      emit(SignUpSucessCubitState(sucessMessage: 'Please verify your Email'));
    } else {
      emit(SignUpFailedCubitState(errorMessage: result));
    }
  }
}
