
import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key,
    required this.value,
  });
  final double value;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: value),
        duration: Duration(seconds: 1) * 1.3,
        builder: (context, double value, child) {
          return SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 10,
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(16),
                color: ColorsManger.kPrimaryColor,
                value: value,
              ));
        });
  }
}
