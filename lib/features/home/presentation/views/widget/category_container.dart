import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';

class CategoryContiner extends StatefulWidget {
  CategoryContiner({
    super.key,
    required this.label,
  });
  final String label;

  @override
  State<CategoryContiner> createState() => _CategoryContinerState();
}

class _CategoryContinerState extends State<CategoryContiner> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (index == 2) {
          index = 1;
        } else {
          index = 2;
        }
        setState(() {});
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: index == 2
                  ? ColorsManger.kPrimaryColor
                  : ColorsManger.kGreyColor.withOpacity(0.13),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
            color: index == 2
                ? ColorsManger.kPrimaryColor
                : ColorsManger.kGreyColor.withOpacity(0.2),
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              widget.label,
              style: TextStyleManger.textStyleAleoRegular24.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: index == 2
                    ? ColorsManger.kWhiteColor
                    : ColorsManger.kScendryColor.withOpacity(0.7),
              ),
            ),
          )),
        ),
      ),
    );
  }
}
