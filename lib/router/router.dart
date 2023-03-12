import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/presentation/home_page.dart';
import 'package:trip_tonic/utils/global_key.dart';

final routerProvider = Provider(
  name: 'routerProvider',
  (ref) => GoRouter(
    navigatorKey: ref.watch(navigatorKeyProvider),
    initialLocation: HomePage.pagePath,
    routes: <RouteBase>[
      GoRoute(
        name: HomePage.pageName,
        path: HomePage.pagePath,
        builder: (BuildContext context, GoRouterState state) => HomePage(),
      ),
    ],
  ),
);
