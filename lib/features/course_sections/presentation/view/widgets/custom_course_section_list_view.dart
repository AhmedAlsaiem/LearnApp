import 'package:flutter/material.dart';
import 'package:i_learn/features/course_sections/presentation/view/widgets/custom_course_section_item.dart';

class CustomCourseSectionListView extends StatelessWidget {
  const CustomCourseSectionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return CustomCourseSectionItem();
      }),
      itemCount: 20,
    );
  }
}