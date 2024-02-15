
import 'package:flutter/material.dart';

import 'my_course_item_list_view.dart';

class CustomTabBarCategory extends StatelessWidget {
  const CustomTabBarCategory({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: TabBarView(controller: _tabController, children: [
        SingleChildScrollView(child: MyCourseItemListView()),
        SingleChildScrollView(child: MyCourseItemListView()),
        SingleChildScrollView(child: MyCourseItemListView()),
      ]),
    );
  }
}
