import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i_learn/features/authantication/presentation/view/forgot_password_view.dart';
import 'package:i_learn/features/authantication/presentation/view/login_view.dart';
import 'package:i_learn/features/authantication/presentation/view/sign_up_view.dart';
import 'package:i_learn/features/course_sections/presentation/view/course_sections_view.dart';
import 'package:i_learn/features/courses/presentation/view/suggestion_courses_view.dart';
import 'package:i_learn/features/home/presentation/views/home_view.dart';
import 'package:i_learn/features/onbording/presentation/view/onbording_view.dart';
import 'package:i_learn/features/specialties/presentation/view/specialties.dart';
import 'package:i_learn/features/splash/presentation/view/splash_view.dart';
import 'package:i_learn/features/courses/presentation/view/track_courses_view.dart';

abstract class AppRouter {
  static String kOnbordingView = '/onbordingView';
  static String kLoginView = '/LoginView';
  static String forgotPasswordView = '/frogotPasswordView';
  static String kSignUpView = '/signUpView';
  static String kHomeView = '/HomeView';
  static String kSpecialtiesView = '/SpecialtiesView';
  static String KTrackCoursesView = '/TrackCoursesView';
  static String kSuggestionCoursesView = '/SuggestionCoursesView';
  static String kCourseSectionsView = '/CourseSectionsView';
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
      GoRoute(
        path: '/HomeView',
        builder: (BuildContext context, GoRouterState state) =>
            const HomeView(),
      ),
      GoRoute(
        path: '/SpecialtiesView',
        builder: (BuildContext context, GoRouterState state) =>
            const SpecialtiesView(),
      ),
      GoRoute(
        path: '/TrackCoursesView',
        builder: (BuildContext context, GoRouterState state) =>
            const TrackCoursesView(),
      ),
      GoRoute(
        path: '/SuggestionCoursesView',
        builder: (BuildContext context, GoRouterState state) =>
            const SuggestionCoursesView(),
      ),
      GoRoute(
        path: '/CourseSectionsView',
        builder: (BuildContext context, GoRouterState state) =>
            const CourseSectionsView(),
      ),
    ],
  );
}
