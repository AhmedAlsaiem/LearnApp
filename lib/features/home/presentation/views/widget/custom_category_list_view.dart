import 'package:flutter/material.dart';
import 'package:i_learn/features/home/presentation/views/widget/category_container.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: ((context, index) {
          return CategoryContiner(
            label: categoryList[index],
          );
        }),
      ),
    );
  }
}

List<String> categoryList = [
  'All',
  'Front End',
  'Back End',
  'Ui Ux Design',
  'Photoshop',
  'HR',
  'IT',
  'Business Administration',
];
