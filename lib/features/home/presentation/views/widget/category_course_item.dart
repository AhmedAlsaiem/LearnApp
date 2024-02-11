import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';
import 'package:i_learn/features/home/presentation/views/widget/cusotm_rating.dart';

class CategoryCourseItem extends StatelessWidget {
  const CategoryCourseItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorsManger.kGreyColor.withOpacity(0.1),
        ),
        height: MediaQuery.of(context).size.height * 0.289,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/course_text.jpeg',
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              '  ' + 'Front End',
              style: TextStyleManger.textStyleAleoRegular16,
            ),
            CustomRatingPart()
          ],
        ),
      ),
    );
  }
}
