import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.label,
    required this.index1,
    required this.index2,
  });
  final String label;
  final int index1;
  final int index2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:
            index1 != index2 ? ColorsManger.kGreyColor.withOpacity(0.1) : null,
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: Text(label)),
    );
  }
}
