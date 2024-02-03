import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.label,
  });
  final void Function()? onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: ColorsManger.kPrimaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      width: double.infinity,
      child: TextButton(
          style: ButtonStyle(),
          onPressed: onPressed,
          child: Text(
            label,
            style: TextStyleManger.textStyleAleoRegular24.copyWith(
              color: ColorsManger.kWhiteColor,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          )),
    );
  }
}
