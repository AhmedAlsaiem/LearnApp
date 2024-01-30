
import 'package:flutter/material.dart';
import 'package:i_learn/features/onbording/presentation/view/widgets/custom_animated_continer.dart';

class CustomListGenerate extends StatelessWidget {
  const CustomListGenerate({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return CustomAnimatedContainer(
          currentIndex: currentIndex,
          index: index,
        );
      }),
    );
  }
}
