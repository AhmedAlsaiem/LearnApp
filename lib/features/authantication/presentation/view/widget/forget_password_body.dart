import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/forget_password_cubit/forget_password_cubit.dart';
import 'package:i_learn/features/authantication/presentation/manager/cubits/forget_password_cubit/forget_password_states.dart';
import 'package:i_learn/features/authantication/presentation/manager/notifications/notifications.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_botton.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_text_form_field.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/handel_state_widget.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/logo_and_text_section.dart';

class ForgetPasswordBody extends StatefulWidget {
  ForgetPasswordBody({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  State<ForgetPasswordBody> createState() => _ForgetPasswordBodyState();
}

class _ForgetPasswordBodyState extends State<ForgetPasswordBody> {
  int value = 4;

  String title = '';

  String subTitle = '';
  String email = '';
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  @override
  void initState() {
    Noti.notiInitialize(flutterLocalNotificationsPlugin);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
      listener: CustomListener,
      child: Form(
        key: widget.formKey,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
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
                          onchange: (value) {
                            email = value;
                          },
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2),
                        CustomButton(
                          label: 'Update',
                          onPressed: () {
                            if (widget.formKey.currentState!.validate() ==
                                true) {
                              BlocProvider.of<ForgetPasswordCubit>(context)
                                  .forgetPassword(
                                email: email,
                              );
                            }
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
    if (state is ForgetPasswordIsLoadingState) {
      value = 1;

      setState(() {});
    } else if (state is ForgetPasswordSucessState) {
      value = 2;
      title = 'Sucess';
      subTitle = state.sucessMessage;

      Noti.showBigTextNatification(
          title: 'Learn Appliaction',
          body: 'Password Updating Sucess',
          fln: flutterLocalNotificationsPlugin);

      setState(() {});
    } else if (state is ForgetPasswordFailedState) {
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
