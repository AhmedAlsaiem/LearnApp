import 'package:flutter/material.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/emai_password_section.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/logo_and_text_section.dart';

class LoginViewBoody extends StatelessWidget {
  LoginViewBoody({
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
            LogoAndTextSection(label: 'Login to your acount',),
            EmailPasswordSection(formKey: formKey),
          ],
        ),
      ),
    );
  }
}



