import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_logo_continer.dart';

class LogoAndTextSection extends StatelessWidget {
  const LogoAndTextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomLogoContiner(),
        SizedBox(height: PaddingManger.defultPadding * 0.5),
        Text(
          'Welcome Back !',
          style: TextStyleManger.textStyleAleoRegular24,
        ),
        Text(
          'Login to your acount',
          style: TextStyleManger.textStyleAleoRegular16.copyWith(
            fontSize: 22,
            color: ColorsManger.kScendryColor.withOpacity(0.5),
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
