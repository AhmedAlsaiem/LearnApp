import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i_learn/features/authantication/presentation/view/forgot_password_view.dart';
import 'package:i_learn/features/authantication/presentation/view/login_view.dart';
import 'package:i_learn/features/authantication/presentation/view/sign_up_view.dart';
import 'package:i_learn/features/onbording/presentation/view/onbording_view.dart';
import 'package:i_learn/features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static String kOnbordingView = '/onbordingView';
  static String kLoginView = '/LoginView';
  static String forgotPasswordView = '/frogotPasswordView';
  static String kSignUpView = '/signUpView';

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
              const SplashView()),
      GoRoute(
        path: '/onbordingView',
        builder: (BuildContext context, GoRouterState state) =>
            const OnbordingView(),
      ),
      GoRoute(
        path: '/LoginView',
        builder: (BuildContext context, GoRouterState state) =>
            const Loginview(),
      ),
      GoRoute(
        path: '/frogotPasswordView',
        builder: (BuildContext context, GoRouterState state) =>
            ForgotPasswordView(),
      ),
      GoRoute(
        path: '/signUpView',
        builder: (BuildContext context, GoRouterState state) =>
            const SignUpView(),
      ),
    ],
  );
}
