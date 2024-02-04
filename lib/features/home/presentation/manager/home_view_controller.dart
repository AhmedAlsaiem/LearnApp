import 'package:flutter/material.dart';
import 'package:i_learn/features/home/presentation/views/widget/home_view_body.dart';
import 'package:i_learn/features/home/presentation/views/widget/my_courses_body.dart';
import 'package:i_learn/features/home/presentation/views/widget/profile_body.dart';
import 'package:i_learn/features/home/presentation/views/widget/settings_body.dart';

Widget homeController({int index = 0}) {
  switch (index) {
    case 0:
      return HomeViewBody();
    case 1:
      return MyCoursesViewBody();
    case 2:
      return SettingsViewBody();
    default:
      return ProfileViewBody();
  }
}
