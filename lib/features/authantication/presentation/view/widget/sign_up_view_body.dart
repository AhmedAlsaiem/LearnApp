import 'package:flutter/material.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/logo_and_text_section.dart';
import 'package:i_learn/features/splash/presentation/view/widgets/custom_signup_section.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({
    super.key,
  });
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            LogoAndTextSection(
              label: 'Regisster to your acount',
            ),
            CustomSignUpWidget(formKey: formKey)
          ],
        ),
      ),
    );
  }
}
