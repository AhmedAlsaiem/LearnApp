import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_tab.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      physics: BouncingScrollPhysics(),
      splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
      splashBorderRadius: BorderRadius.all(Radius.zero),
      tabAlignment: TabAlignment.center,
      indicatorPadding: EdgeInsets.all(0),
      dividerColor: ColorsManger.kWhiteColor,
      indicator: BoxDecoration(
          shape: BoxShape.rectangle,
          color: ColorsManger.kPrimaryColor,
          borderRadius: BorderRadius.circular(10)),
      indicatorColor: Colors.white,
      labelColor: ColorsManger.kWhiteColor,
      controller: _tabController,
      tabs: [
        CustomTab(label: ' all '),
        CustomTab(label: 'inprogress'),
        CustomTab(label: 'complated'),
      ],
    );
  }
}
