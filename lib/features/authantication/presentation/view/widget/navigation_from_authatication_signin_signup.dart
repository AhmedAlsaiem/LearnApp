import 'package:flutter/material.dart';

import 'package:i_learn/core/utils/constants.dart';

// ignore: must_be_immutable
class NavigationFromAuthaticitonSignInSignUp extends StatelessWidget {
  NavigationFromAuthaticitonSignInSignUp(
      {required this.label1, required this.label2, required this.ontap});
  final String label1, label2;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label1),
        GestureDetector(
          onTap: ontap,
          child: Text(
            label2,
            style: TextStyle(
              color: ColorsManger.kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}
