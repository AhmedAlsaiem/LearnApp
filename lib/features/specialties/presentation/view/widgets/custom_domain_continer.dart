
import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';

class CustomDomainContiner extends StatefulWidget {
  CustomDomainContiner({
    super.key,
    required this.flex,
    required this.title,
  });
  final int flex;
  final title;

  @override
  State<CustomDomainContiner> createState() => _CustomDomainContinerState();
}

class _CustomDomainContinerState extends State<CustomDomainContiner> {
  late Color fontColor = ColorsManger.kScendryColor;
  late Color backgroundColor = ColorsManger.kWhiteColor;
  late Color borderColor = ColorsManger.kScendryColor.withOpacity(0.6);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flex,
      child: GestureDetector(
        onTap: () {
          if (fontColor == ColorsManger.kScendryColor) {
            fontColor = ColorsManger.kWhiteColor;
            backgroundColor = ColorsManger.kPrimaryColor;
            borderColor = ColorsManger.kPrimaryColor;
            setState(() {});
          } else {
            fontColor = ColorsManger.kScendryColor;
            backgroundColor = ColorsManger.kWhiteColor;
            borderColor = ColorsManger.kScendryColor.withOpacity(0.6);
            setState(() {});
          }
        },
        child: Container(
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: borderColor, width: 2.0)),
          child: Center(
            child: Text(
              widget.title,
              style: TextStyleManger.textStyleAleoRegular16.copyWith(
                fontWeight: FontWeight.w800,
                color: fontColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}