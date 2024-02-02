import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_botton.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_text_form_field.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/navigation_from_authatication_signin_signup.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// ignore: must_be_immutable
class CustomSignUpSection extends StatelessWidget {
  CustomSignUpSection({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;
  late String email='';
  late String password='';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          CustomTextFormField(
            label: 'User name',
            icon: Icon(MdiIcons.accountOutline),
            onchange: (value) {},
          ),
          SizedBox(height: PaddingManger.defultPadding),
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
          SizedBox(height: PaddingManger.defultPadding * 1.5),
          CustomButton(
            label: 'Sign Up',
            onPressed: () {
              
                if (formKey.currentState!.validate() == true) {
                  BlocProvider.of<SignUpcubit>(context)
                      .signUpWithEmailAndPassword(
                          email: email, password: password);
                  print('${password} + $email Ahmed');
                }

              
            },
          ),
          SizedBox(height: PaddingManger.defultPadding),
          NavigationFromAuthaticitonSignInSignUp(
            label1: 'You have an acount ',
            label2: 'Sign In',
            ontap: () {
              GoRouter.of(context).pop();
            },
          ),
          SizedBox(
            height: PaddingManger.defultPadding * 2,
          ),
        ],
      ),
    );
  }
}
