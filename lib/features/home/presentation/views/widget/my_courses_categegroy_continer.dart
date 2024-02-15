import 'package:flutter/material.dart';
import 'package:i_learn/features/home/presentation/views/widget/category_container.dart';

class MyCoursesCategoryContianer extends StatelessWidget {
  const MyCoursesCategoryContianer({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: SizedBox(
        height: 54,
        child: CategoryContiner(
          label: label,
        ),
      ),
    );
  }
}
