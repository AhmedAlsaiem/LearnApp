import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';

class CustomOnbordingButtom extends StatelessWidget {
  const CustomOnbordingButtom({
    super.key,
    required this.index, required this.ontap,
  });
  final int index;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: index == 2
                  ? ColorsManger.kPrimaryColor
                  : ColorsManger.kScendryColor.withOpacity(0.8),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
            color: index == 2
                ? ColorsManger.kPrimaryColor
                : ColorsManger.kWhiteColor),
        height: 60,
        width: 110,
        child: Center(
            child: Text(
          'Next',
          style: TextStyleManger.textStyleAleoRegular24.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: index == 2 ? ColorsManger.kWhiteColor : null),
        )),
      ),
    );
  }
}
