import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:run_art_app/features/home/presentation/home_page.dart';
import 'package:run_art_app/features/auth/presentation/login_page.dart';
import 'package:run_art_app/features/routes/presentation/routes_list_page.dart';
import 'package:run_art_app/features/running/presentation/running_page.dart';
import 'package:run_art_app/features/running/presentation/run_complete_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/routes',
        name: 'routes',
        builder: (context, state) => const RoutesListPage(),
      ),
      GoRoute(
        path: '/running/:routeId',
        name: 'running',
        builder: (context, state) {
          final routeId = state.pathParameters['routeId']!;
          return RunningPage(routeId: routeId);
        },
      ),
      GoRoute(
        path: '/complete',
        name: 'complete',
        builder: (context, state) => const RunCompletePage(),
      ),
    ],
  );
});