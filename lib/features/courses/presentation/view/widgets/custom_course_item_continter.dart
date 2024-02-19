import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';

class CustomCourseItemContiner extends StatelessWidget {
  const CustomCourseItemContiner({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ColorsManger.kPrimaryColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.293,
          child: AutoSizeText(
            label,
            style: TextStyleManger.textStyleAleoRegular24.copyWith(
              color: ColorsManger.kWhiteColor.withOpacity(0.9),
            ),
          ),
        ),
        Positioned(
            left: 20,
            top: PaddingManger.defultPadding * 2.5,
            child: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: ColorsManger.kWhiteColor,
                size: 24,
              ),
            )),
      ],
    );
  }
}
