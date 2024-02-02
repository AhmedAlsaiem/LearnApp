import 'package:flutter/material.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/forget_password_body.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ForgetPasswordBody(formKey: formKey));
  }
}

