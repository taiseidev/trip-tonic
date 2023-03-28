import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/global_key.dart';
import 'package:trip_tonic/src/presentation/auth/sign_up/sign_up_page.dart';
import 'package:trip_tonic/src/presentation/main/main_page.dart';
import 'package:trip_tonic/src/presentation/notification/notification_detail_page.dart';
import 'package:trip_tonic/src/presentation/story/story_detail_page.dart';
import 'package:trip_tonic/src/presentation/top/top_page.dart';

final routerProvider = Provider(
  name: 'routerProvider',
  (ref) => GoRouter(
    navigatorKey: ref.watch(navigatorKeyProvider),
    initialLocation: TopPage.pagePath,
    routes: <RouteBase>[
      GoRoute(
        name: TopPage.pageName,
        path: TopPage.pagePath,
        builder: (BuildContext context, GoRouterState state) => const TopPage(),
      ),
      GoRoute(
        name: SignUpPage.pageName,
        path: SignUpPage.pagePath,
        builder: (BuildContext context, GoRouterState state) =>
            const SignUpPage(),
      ),
      GoRoute(
        name: MainPage.pageName,
        path: MainPage.pagePath,
        builder: (BuildContext context, GoRouterState state) =>
            const MainPage(),
      ),
      GoRoute(
        name: StoryDetailPage.pageName,
        path: StoryDetailPage.pagePath,
        builder: (BuildContext context, GoRouterState state) {
          final location = state.extra as TextExtra;
          return StoryDetailPage(
            location: location.text,
          );
        },
      ),
      GoRoute(
        name: NotificationDetailPage.pageName,
        path: NotificationDetailPage.pagePath,
        builder: (BuildContext context, GoRouterState state) =>
            const NotificationDetailPage(),
      ),
    ],
  ),
);

class TextExtra {
  const TextExtra({
    required this.text,
  });

  final String text;
}
