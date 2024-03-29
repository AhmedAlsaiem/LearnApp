import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_past_course_item.dart';

class BestCoursesListView extends StatelessWidget {
  const BestCoursesListView({
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
        return CustomBestCourseItem();
      }),
    );
  }
}
