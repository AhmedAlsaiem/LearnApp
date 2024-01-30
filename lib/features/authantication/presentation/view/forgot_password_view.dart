import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_botton.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_text_form_field.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/logo_and_text_section.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ForgetPasswordBody(formKey: formKey));
  }
}

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            LogoAndTextSection(label: 'Forget Password'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(height: PaddingManger.defultPadding),
                  CustomTextFormField(
                    label: 'Email',
                    icon: Icon(Icons.email_outlined, size: 30),
                    onchange: (value) {},
                  ),
                  SizedBox(height: PaddingManger.defultPadding),
                  CustomTextFormField(
                    label: 'New password',
                    icon: Icon(Icons.lock_outlined, size: 30),
                    onchange: (value) {},
                  ),
                  SizedBox(height: PaddingManger.defultPadding * 1.5),
                  CustomButton(
                    label: 'Update',
                    onPressed: () {
                      formKey.currentState!.validate();
                    },
                  ),
                  SizedBox(
                    height: PaddingManger.defultPadding * 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
