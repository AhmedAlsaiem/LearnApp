import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/home/presentation/views/widget/best_course_section.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_category_list_view.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_search_section.dart';
import 'category_course_item_list_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomSearchSection(),
          SizedBox(height: PaddingManger.defultPadding),
          Padding(
            padding: EdgeInsets.only(left: PaddingManger.defultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCategoryListView(),
                SizedBox(height: PaddingManger.defultPadding),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      CategoryCourseItemListView(),
                      SizedBox(height: PaddingManger.defultPadding),
                      BestCourseSection()
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

BoxDecoration CustomBoxDecoration() {
  return BoxDecoration(
    color: ColorsManger.kPrimaryColor,
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
  );
}
