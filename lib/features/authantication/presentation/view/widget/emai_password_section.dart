import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:i_learn/core/utils/appRouters.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:i_learn/core/widgets/custom_botton.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_text_form_field.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/navigation_from_authatication_signin_signup.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/sigin_Options.dart';

// ignore: must_be_immutable
class EmailPasswordSection extends StatelessWidget {
  EmailPasswordSection({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomTextFormField(
                label: 'Email',
                icon: Icon(Icons.email_outlined, size: 30),
                onchange: (value) {
                  email = value;
                },
              ),
              SizedBox(height: PaddingManger.defultPadding),
              CustomTextFormField(
                label: 'Password',
                icon: Icon(Icons.lock_outlined, size: 30),
                onchange: (value) {
                  password = value;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.forgotPasswordView);
                    },
                    child: Text(
                      'forgot password?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: PaddingManger.defultPadding),
              CustomButton(
                label: 'Sign in',
                onPressed: () {
                  if (formKey.currentState!.validate() == true) {
                    BlocProvider.of<SignInCubit>(context)
                        .signInWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                  }
                },
              ),
              SizedBox(
                height: PaddingManger.defultPadding,
              ),
              SiginOptions(),
              NavigationFromAuthaticitonSignInSignUp(
                label1: "You don't have an Acount ",
                label2: 'Sign Up',
                ontap: () {
                  GoRouter.of(context).push(AppRouter.kSignUpView);
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
