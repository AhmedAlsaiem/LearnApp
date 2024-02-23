import 'package:flutter/material.dart';
import 'package:i_learn/features/course_sections/presentation/view/widgets/custom_list_tile_course_vedio_item.dart';

class CustomCourseVideoListView extends StatelessWidget {
  const CustomCourseVideoListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 10),
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: 4,
      itemBuilder: ((context, index) {
        return CustomListTileCourseVedioItem();
      }),
    );
  }
}
