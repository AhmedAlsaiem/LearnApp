import 'package:flutter/material.dart';
import 'package:i_learn/features/course_sections/presentation/view/widgets/custom_course_video_list_view.dart';
import 'package:i_learn/features/course_sections/presentation/view/widgets/custom_list_tile_course_section.dart';

class CustomCourseSectionItem extends StatefulWidget {
  const CustomCourseSectionItem({super.key});

  @override
  State<CustomCourseSectionItem> createState() =>
      _CustomCourseSectionItemState();
}

class _CustomCourseSectionItemState extends State<CustomCourseSectionItem> {
  bool controller = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListTileCourseSection(
          controller: controller,
          onPressed: () {
            controller = !controller;
            setState(() {});
          },
        ),
        controller == true ? CustomCourseVideoListView() : Container(),
      ],
    );
  }
}
