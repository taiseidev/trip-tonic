import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/global_key.dart';
import 'package:trip_tonic/src/domain/entities/story/story.dart';
import 'package:trip_tonic/src/presentation/router/args.dart';
import 'package:trip_tonic/src/presentation/ui/pages/auth/sign_in_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/main/main_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/notification/notification_detail_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/story_create_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_read/story_read_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/waiting_game/waiting_game_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/top/top_page.dart';

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
        builder: (BuildContext context, _) => const MainPage(),
      ),
      GoRoute(
        name: StoryCreatePage.pageName,
        path: StoryCreatePage.pagePath,
        builder: (BuildContext context, GoRouterState state) =>
            StoryCreatePage(),
      ),
      GoRoute(
        name: StoryReadPage.pageName,
        path: StoryReadPage.pagePath,
        builder: (BuildContext context, GoRouterState state) {
          final story = state.extra as Story;
          return StoryReadPage(
            story: story,
          );
        },
      ),
      GoRoute(
        name: WaitingGamePage.pageName,
        path: WaitingGamePage.pagePath,
        builder: (BuildContext context, GoRouterState state) {
          final args = state.extra! as CreateStoryArgs;
          return WaitingGamePage(args: args);
        },
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
