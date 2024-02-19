import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/courses/presentation/view/widgets/custom_track_courses_item.dart';

class CustomListViewTrackCourse extends StatelessWidget {
  const CustomListViewTrackCourse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.only(top: PaddingManger.defultPadding),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: ((context, index) {
        return CustomTrackCoursesItem();
      }),
    );
  }
}
