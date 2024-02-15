
import 'package:flutter/material.dart';
import 'package:i_learn/features/home/presentation/views/widget/my_course_item.dart';

class MyCourseItemListView extends StatelessWidget {
  const MyCourseItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 10),
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: ((context, index) {
        return MyCourseItem(value: 0.5 + (index / 20));
      }),
    );
  }
}
