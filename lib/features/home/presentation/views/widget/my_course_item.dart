import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i_learn/core/utils/appRouters.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';
import 'package:i_learn/features/home/presentation/views/widget/animated_linear_progress_indicator.dart';
import 'package:i_learn/features/home/presentation/views/widget/cusotm_rating.dart';

class MyCourseItem extends StatelessWidget {
  const MyCourseItem({
    super.key,
    required this.value,
  });
  final double value;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kCourseSectionsView);
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: ColorsManger.kGreyColor.withOpacity(0.1),
          ),
          height: MediaQuery.of(context).size.height * 0.13,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: double.infinity,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/course_text.jpeg',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'UI UX Course Desgin',
                      style: TextStyleManger.textStyleAleoRegular16
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    CustomRatingPart(),
                    SizedBox(height: 5),
                    AnimatedLinearProgressIndicator(value: value),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
