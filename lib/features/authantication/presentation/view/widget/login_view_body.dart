import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:i_learn/core/utils/appRouters.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/sign_in_cubit/sign_in_cubit_state.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/emai_password_section.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/handel_state_widget.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/logo_and_text_section.dart';

// ignore: must_be_immutablas
class LoginViewBoody extends StatefulWidget {
  LoginViewBoody({
    super.key,
  });
  @override
  State<LoginViewBoody> createState() => _LoginViewBoodyState();
}
class _LoginViewBoodyState extends State<LoginViewBoody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  int value = 4;
  String title = '';
  String subTitle = '';
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInCubitState>(
      listener: CustomListener,
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  LogoAndTextSection(
                    label: 'Login to your acount',
                  ),
                  EmailPasswordSection(formKey: formKey),
                ],
              ),
              value < 3
                  ? HandleStatesWidget(
                      value: value,
                      title: title,
                      subTitle: subTitle,
                      onPressed: () {
                        setState(() {
                          value = 3;
                        });
                      },
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }

  void CustomListener(context, state) {
    if (state is SignInIsLoadingCubitStatec) {
      value = 1;

      setState(() {});
    } else if (state is SignInSucessCubitState) {
      value = 4;
      setState(() {});
      GoRouter.of(context).push(AppRouter.kHomeView);
    } else if (state is SignInFailedCubitState) {
      title = 'Failed';
      subTitle = state.errorMessage;
      value = 2;
      setState(() {});
    } else {
      value = 4;
      title = 'Failed';
      subTitle = 'there are an error, try agin';
      setState(() {});
    }
  }
}
