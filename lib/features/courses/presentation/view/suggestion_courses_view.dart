import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/courses/presentation/view/widgets/custom_course_item_continter.dart';
import 'package:i_learn/features/home/presentation/views/widget/best_course_list_view.dart';

class SuggestionCoursesView extends StatelessWidget {
  const SuggestionCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SuggestionCoursesViewBody(),
    );
  }
}

class SuggestionCoursesViewBody extends StatelessWidget {
  const SuggestionCoursesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCourseItemContiner(label: 'HTML Courses'),
        Padding(
          padding: EdgeInsets.all(PaddingManger.defultPadding),
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.66,
                  child: SingleChildScrollView(child: BestCoursesListView()))
            ],
          ),
        ),
      ],
    );
  }
}
