import 'package:flutter/material.dart';
import 'package:i_learn/core/utils/constants.dart';
import 'package:i_learn/core/utils/styles.dart';
import 'package:i_learn/core/widgets/custom_logo_continer.dart';

import 'widgets/custom_course_section_list_view.dart';

class CourseSectionsView extends StatelessWidget {
  const CourseSectionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CourseSectionsViewBody(),
    );
  }
}

class CourseSectionsViewBody extends StatefulWidget {
  const CourseSectionsViewBody({super.key});

  @override
  State<CourseSectionsViewBody> createState() => _CourseSectionsViewBodyState();
}

class _CourseSectionsViewBodyState extends State<CourseSectionsViewBody> {
  bool controller = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomLogoContiner(
            height: MediaQuery.of(context).size.height * 0.26,
            child: Text(
              'HTML Sections',
              style: TextStyleManger.textStyleAleoRegular24
                  .copyWith(color: ColorsManger.kWhiteColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(PaddingManger.defultPadding),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.713,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomCourseSectionListView(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


