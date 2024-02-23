import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/features/home/presentation/views/widget/custom_tab.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    super.key,
    required TabController tabController,
    required this.labelList,
  }) : _tabController = tabController;

  final TabController _tabController;
  final List<String> labelList;
  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int val = 0;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (vlaue) {
        val = vlaue;
        setState(() {});
      },

      unselectedLabelColor: ColorsManger.kScendryColor,
      physics: BouncingScrollPhysics(),
      //isScrollable: true,
      overlayColor: MaterialStatePropertyAll(Colors.white),
      splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
      splashBorderRadius: BorderRadius.all(Radius.zero),
      tabAlignment: TabAlignment.center,
      dividerColor: ColorsManger.kWhiteColor,
      indicator: BoxDecoration(
          color: ColorsManger.kPrimaryColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)),
      labelColor: ColorsManger.kWhiteColor,
      controller: widget._tabController,
      tabs: [
        for (int i = 0; i < widget.labelList.length; i++)
          CustomTab(
            label: widget.labelList[i],
            index1: i,
            index2: val,
          ),
      ],
    );
  }
}
