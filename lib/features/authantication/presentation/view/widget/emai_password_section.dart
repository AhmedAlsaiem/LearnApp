import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i_learn/core/utils/appRouters.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_botton.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_text_form_field.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/sigin_Options.dart';

class EmailPasswordSection extends StatelessWidget {
  const EmailPasswordSection({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

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
                onchange: (value) {},
              ),
              SizedBox(height: PaddingManger.defultPadding),
              CustomTextFormField(
                label: 'Password',
                icon: Icon(Icons.lock_outlined, size: 30),
                onchange: (value) {},
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
                  formKey.currentState!.validate();
                },
              ),
              SizedBox(
                height: PaddingManger.defultPadding,
              ),
              SiginOptions(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You don't have an Acount "),
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kSignUpView);
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: ColorsManger.kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
