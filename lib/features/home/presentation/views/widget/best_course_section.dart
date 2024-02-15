import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';
import 'package:i_learn/features/home/presentation/views/widget/best_course_list_view.dart';

class BestCourseSection extends StatelessWidget {
  const BestCourseSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: PaddingManger.defultPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Course',
                style: TextStyleManger.textStyleAleoRegular16.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorsManger.kScendryColor),
              ),
              Text(
                'See all',
                style: TextStyleManger.textStyleAleoRegular16,
              ),
            ],
          ),
          BestCoursesListView(),
        ],
      ),
    );
  }
}
