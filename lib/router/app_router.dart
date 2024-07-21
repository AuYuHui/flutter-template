import 'package:flutter/material.dart';
import 'package:flutter_template/router/router_constants.dart';
import 'package:flutter_template/screens/home.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class AppRouterConfig {
  AppRouterConfig._();
  static final AppRouterConfig _instance = AppRouterConfig._();
  static AppRouterConfig get instance => _instance;

  final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouterConstants.home,
    routes: <RouteBase>[
      GoRoute(
        path: RouterConstants.home,
        pageBuilder: (context, state) {
          return NoTransitionPage(
            child: HomeScreen(),
            key: state.pageKey,
          );
        },
      )
    ],
  );

  GoRouter get getGoRouter => _router;
}
