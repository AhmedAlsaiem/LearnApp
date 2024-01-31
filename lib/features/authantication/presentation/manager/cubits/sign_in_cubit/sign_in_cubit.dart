import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_learn/features/authantication/data/repos/auth_repo_implemantation.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/sign_in_cubit/sign_In_cubit_state.dart';

class SignIncubit extends Cubit<SignInCubitState> {
  SignIncubit() : super(SignInCubitState());
  AuthRepoImplemantation authRepoImp = AuthRepoImplemantation();
  void signInWithEmailAndPassword({required email, required password}) async {
    emit(SignInIsLoadingCubitStatec());
    var result =
        await authRepoImp.signInEmailPassword(email: email, password: password);
    if (result == 'success') {
      emit(SignInSucessCubitState());
    } else {
      emit(SignInFailedCubitState(errorMessage: result));
    }
  }

  void forgetPassword({required email}) async {
    emit(SignInIsLoadingCubitStatec());
    var result = await authRepoImp.forgetPssword(email: email);
    if (result == "Password reset email sent") {
      emit(SignInSucessCubitState());
    } else {
      emit(SignInFailedCubitState(errorMessage: result));
    }
  }
}
