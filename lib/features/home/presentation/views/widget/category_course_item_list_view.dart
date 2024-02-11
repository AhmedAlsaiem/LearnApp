import 'package:flutter/material.dart';
import 'package:i_learn/features/home/presentation/views/widget/category_course_item.dart';

class CategoryCourseItemListView extends StatelessWidget {
  const CategoryCourseItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.289,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: ((context, index) {
          return CategoryCourseItem();
        }),
      ),
    );
  }
}
