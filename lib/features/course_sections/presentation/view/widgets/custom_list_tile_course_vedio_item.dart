import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';

class CustomListTileCourseVedioItem extends StatelessWidget {
  const CustomListTileCourseVedioItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        leadingAndTrailingTextStyle: TextStyle(),
        splashColor: Colors.black,
        trailing: Text(
          '2:33',
          style: TextStyleManger.textStyleAleoRegular16,
        ),
        leading: CircleAvatar(
          backgroundColor: ColorsManger.kgreenAccent,
          child: Icon(
            Icons.play_arrow,
            color: ColorsManger.kWhiteColor,
          ),
        ),
        style: ListTileStyle.drawer,
        title: Text(
          'Lesson 1',
          style: TextStyleManger.textStyleAleoRegular16,
        ),
      ),
    );
  }
}
