import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i_learn/core/utils/appRouters.dart';
import 'custom_logo_image.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({super.key});

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [customLogoImage()],
    );
  }
}
