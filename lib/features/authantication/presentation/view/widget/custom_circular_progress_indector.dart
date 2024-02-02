import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';

class CustomCirculerProgressIndicator extends StatelessWidget {
  const CustomCirculerProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: ColorsManger.kPrimaryColor,
    );
  }
}
