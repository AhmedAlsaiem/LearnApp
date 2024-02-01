import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/sign_up_cubit/sign_up_cubit_state.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/handel_state_widget.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/logo_and_text_section.dart';
import 'package:i_learn/features/splash/presentation/view/widgets/custom_signup_section.dart';

class SignUpViewBody extends StatefulWidget {
  SignUpViewBody({
    super.key,
  });

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();

  int value = 4;
  String title = '';
  String subTitle = '';
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpcubit, SignUpCubitState>(
      listener: CustomListener,
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  LogoAndTextSection(
                    label: 'Regisster to your acount',
                  ),
                  CustomSignUpSection(formKey: formKey)
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
    if (state is SignUpIsLoadingCubitStatec) {
      value = 1;

      setState(() {});
    } else if (state is SignUpSucessCubitState) {
      value = 2;
      title = 'Sucess';
      subTitle = state.sucessMessage;

      setState(() {});
    } else if (state is SignUpFailedCubitState) {
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
