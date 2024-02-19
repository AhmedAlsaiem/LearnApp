import 'package:flutter/material.dart';
import 'package:i_learn/features/courses/presentation/view/widgets/track_courses_body.dart';

class TrackCoursesView extends StatelessWidget {
  const TrackCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:TrackCoursesBody() ,
    );
  }
}