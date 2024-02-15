import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_learn/features/authantication/data/repos/auth_repo_implemantation.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/sign_in_cubit/sign_in_state.dart';

class SignInCubit extends Cubit<SignInCubitState> {
  SignInCubit() : super(SignInCubitState());
  AuthRepoImplemantation authRepoImp = AuthRepoImplemantation();

  void signInWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(SignInIsLoadingCubitStatec());
    var result =
        await authRepoImp.signInEmailPassword(email: email, password: password);
    if (result == 'success') {
      emit(SignInSucessCubitState(sucessMessage: 'success'));
    } else {
      emit(SignInFailedCubitState(errorMessage: result));
    }
  }

  void forgetPassword({required email}) async {
    emit(SignInIsLoadingCubitStatec());
    var result = await authRepoImp.forgetPssword(email: email);
    if (result == 'Password reset email sent') {
      emit(SignInSucessCubitState(sucessMessage: 'Password reset email sent'));
    } else {
      emit(SignInFailedCubitState(errorMessage: result));
    }
  }
}
