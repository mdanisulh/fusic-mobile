import 'package:flutter/material.dart';
import 'package:fusic/common/common.dart';
import 'package:fusic/constants/constants.dart';
import 'package:fusic/features/onboarding/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/onboarding',
  routes: [
    GoRoute(
      name: MyRoutes.onboarding,
      path: '/onboarding',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const OnboardingView(),
      ),
    ),
  ],
  // redirect: (context, state) => (user!=null) ? null : '/login',
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: ErrorPage(error: state.error.toString()),
  ),
);