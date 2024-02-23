import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';

class CustomListTileCourseSection extends StatelessWidget {
  const CustomListTileCourseSection(
      {super.key, required this.onPressed, required this.controller});
  final void Function() onPressed;
  final bool controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border.all(color: ColorsManger.kScendryColor.withOpacity(0.05)),
          borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 10),
        leadingAndTrailingTextStyle: TextStyle(),
        splashColor: Colors.black,
        trailing: IconButton(
          color: ColorsManger.kPrimaryColor.withOpacity(0.9),
          onPressed: onPressed,
          icon: Icon(
            controller == true ? Icons.expand_less : Icons.expand_more,
            size: 42,
          ),
        ),
        leading: CircleAvatar(
          backgroundColor: ColorsManger.kgreenAccent,
          child: Icon(
            controller == false ? Icons.play_arrow : Icons.pause,
            color: ColorsManger.kWhiteColor,
          ),
        ),
        style: ListTileStyle.drawer,
        title: Text(
          'Unit 1',
          style: TextStyleManger.textStyleAleoRegular16,
        ),
      ),
    );
  }
}
