import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';
import 'package:i_learn/features/authantication/presentation/view/widget/custom_logo_continer.dart';
import 'package:i_learn/features/home/presentation/views/widget/my_courses_section.dart';

class MyCoursesViewBody extends StatefulWidget {
  const MyCoursesViewBody({super.key});

  @override
  State<MyCoursesViewBody> createState() => _MyCoursesViewBodyState();
}

class _MyCoursesViewBodyState extends State<MyCoursesViewBody>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomLogoContiner(
          height: MediaQuery.of(context).size.height * 0.26,
          child: Text(
            'My Course',
            style: TextStyleManger.textStyleAleoRegular24
                .copyWith(color: ColorsManger.kWhiteColor),
          ),
        ),
        MyCoursesSection(tabController: _tabController)
      ],
    );
  }
}
