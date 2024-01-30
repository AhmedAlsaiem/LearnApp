import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';

class CustomBottonLoginOptions extends StatelessWidget {
  const CustomBottonLoginOptions({
    super.key,
    required this.color,
    required this.label,
    required this.iamge,
  });
  final Color color;
  final String label;
  final String iamge;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            border: Border.all(
              color: label == 'Google'
                  ? ColorsManger.kScendryColor
                  : ColorsManger.kPrimaryColor,
            ),
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          width: double.infinity,
          child: TextButton(
            style: ButtonStyle(),
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(iamge, height: 20, width: 20),
                SizedBox(width: 5),
                Text(
                  label,
                  style: TextStyleManger.textStyleAleoRegular24.copyWith(
                    color: label == 'Google'
                        ? ColorsManger.kScendryColor
                        : ColorsManger.kWhiteColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
