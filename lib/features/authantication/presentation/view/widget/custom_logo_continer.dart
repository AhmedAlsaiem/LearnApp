import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_cliper.dart';

class CustomLogoContiner extends StatelessWidget {
  const CustomLogoContiner(
      {super.key, required this.child, required this.height});
  final Widget child;
  final double height;
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
        height: height,
        width: double.infinity,
        child: Center(child: child),
      ),
    );
  }
}
