import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_cliper.dart';
import 'package:i_learn/features/splash/presentation/view/widgets/custom_logo_image.dart';

class CustomLogoContiner extends StatelessWidget {
  const CustomLogoContiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Customcliper(),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManger.kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(280, 85),
            bottomRight: Radius.elliptical(30, 20),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.35,
        width: double.infinity,
        child: customLogoImage(),
      ),
    );
  }
}
