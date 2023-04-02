import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/global_key.dart';
import 'package:trip_tonic/src/presentation/auth/sign_in_page.dart';
import 'package:trip_tonic/src/presentation/main/main_page.dart';
import 'package:trip_tonic/src/presentation/notification/notification_detail_page.dart';
import 'package:trip_tonic/src/presentation/story/story_create_page.dart';
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
        name: SignInPage.pageName,
        path: SignInPage.pagePath,
        builder: (BuildContext context, GoRouterState state) =>
            const SignInPage(),
      ),
      GoRoute(
        name: MainPage.pageName,
        path: MainPage.pagePath,
        builder: (BuildContext context, GoRouterState state) =>
            const MainPage(),
      ),
      GoRoute(
        name: StoryCreatePage.pageName,
        path: StoryCreatePage.pagePath,
        builder: (BuildContext context, GoRouterState state) =>
            StoryCreatePage(),
      ),
      GoRoute(
        name: NotificationDetailPage.pageName,
        path: NotificationDetailPage.pagePath,
        builder: (BuildContext context, GoRouterState state) =>
            const NotificationDetailPage(),
      ),
    ],
    redirect: (context, state) {
      // final user = FirebaseAuth.instance.currentUser;
      // if (user == null) {
      //   return '/top';
      // }
      return null;
    },
  ),
);

class TextExtra {
  const TextExtra({
    required this.text,
  });

  final String text;
}
