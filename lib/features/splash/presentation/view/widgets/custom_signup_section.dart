import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i_learn/core/utils/appRouters.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_botton.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_text_form_field.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/navigation_from_authatication_signin_signup.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomSignUpSection extends StatelessWidget {
  const CustomSignUpSection({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

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
            onchange: (value) {},
          ),
          SizedBox(height: PaddingManger.defultPadding),
          CustomTextFormField(
            label: 'Password',
            icon: Icon(Icons.lock_outlined, size: 30),
            onchange: (value) {},
          ),
          SizedBox(height: PaddingManger.defultPadding * 1.5),
          CustomButton(
            label: 'Sign Up',
            onPressed: () {
              formKey.currentState!.validate();
            },
          ),
          SizedBox(height: PaddingManger.defultPadding),
          NavigationFromAuthaticitonSignInSignUp(
            label1: 'You have an acount ',
            label2: 'Sign In',
            ontap: () {
              GoRouter.of(context).push(AppRouter.kLoginView);
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
