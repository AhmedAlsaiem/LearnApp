import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';

class CustomAnimatedContainer extends StatelessWidget {
  const CustomAnimatedContainer({
    super.key,
    required this.currentIndex,
    required this.index,
  });

  final int currentIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: currentIndex == index
              ? ColorsManger.kPrimaryColor
              : ColorsManger.kGreyColor,
        ),
        height: 8,
        margin: const EdgeInsets.only(right: 5),
        width: currentIndex == index ? 28 : 8,
        duration: const Duration(milliseconds: 200));
  }
}
