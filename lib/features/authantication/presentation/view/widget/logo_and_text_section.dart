import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_logo_continer.dart';
import 'package:i_learn/features/splash/presentation/view/widgets/custom_logo_image.dart';

class LogoAndTextSection extends StatelessWidget {
  const LogoAndTextSection({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomLogoContiner(
          child: customLogoImage(),
          height: MediaQuery.of(context).size.height * 0.35,
        ),
        SizedBox(height: PaddingManger.defultPadding * 0.5),
        Text(
          'Welcome Back !',
          style: TextStyleManger.textStyleAleoRegular24,
        ),
        Text(
          label,
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
