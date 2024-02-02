import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_learn/features/authantication/data/repos/auth_repo_implemantation.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/forget_password_cubit/forget_password_states.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super(ForgetPasswordState());
  AuthRepoImplemantation authRepoImp = AuthRepoImplemantation();

  void forgetPassword({required email}) async {
    emit(ForgetPasswordIsLoadingState());
    var result = await authRepoImp.forgetPssword(email: email);
    if (result == 'Password reset email sent') {
      emit(ForgetPasswordSucessState(
          sucessMessage: 'Password reset email sent'));
    } else {
      emit(ForgetPasswordFailedState(errorMessage: result));
    }
  }
}
