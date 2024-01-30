
import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_botton_login_options.dart';

class SiginOptions extends StatelessWidget {
  const SiginOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.08,
        ),
        CustomBottonLoginOptions(
          color: ColorsManger.kPrimaryColor,
          label: 'Facebook',
          iamge: AssetsManger.facbookIamge,
        ),
        CustomBottonLoginOptions(
          color: ColorsManger.kWhiteColor,
          label: 'Google',
          iamge: AssetsManger.googleImge,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.08,
        ),
      ],
    );
  }
}