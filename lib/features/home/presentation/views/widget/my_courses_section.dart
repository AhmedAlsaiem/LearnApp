import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_tab_bar_category.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_tab_bar.dart';

class MyCoursesSection extends StatelessWidget {
  const MyCoursesSection({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: PaddingManger.defultPadding,
      ),
      child: Column(
        children: [
          SizedBox(
            height: PaddingManger.defultPadding,
          ),
          CustomTabBar(tabController: _tabController),
          SizedBox(height: PaddingManger.defultPadding),
          CustomTabBarCategory(tabController: _tabController)
        ],
      ),
    );
  }
}
