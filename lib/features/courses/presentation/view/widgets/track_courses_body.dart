import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/courses/presentation/view/widgets/custom_course_item_continter.dart';
import 'package:i_learn/features/courses/presentation/view/widgets/custom_list_view_track_courses.dart';

class TrackCoursesBody extends StatelessWidget {
  const TrackCoursesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCourseItemContiner(label: 'Front End'),
        Padding(
          padding: EdgeInsets.all(PaddingManger.defultPadding),
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.66,
                  child:
                      SingleChildScrollView(child: CustomListViewTrackCourse()))
            ],
          ),
        ),
      ],
    );
  }
}
