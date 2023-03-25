import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/presentation/main/main_page.dart';
import 'package:trip_tonic/src/presentation/notification/notification_detail_page.dart';
import 'package:trip_tonic/src/presentation/story/story_detail_page.dart';
import 'package:trip_tonic/utils/global_key.dart';

final routerProvider = Provider(
  name: 'routerProvider',
  (ref) => GoRouter(
    navigatorKey: ref.watch(navigatorKeyProvider),
    initialLocation: MainPage.pagePath,
    routes: <RouteBase>[
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
