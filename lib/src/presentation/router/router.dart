import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/global_key.dart';
import 'package:trip_tonic/src/domain/entities/story/story.dart';
import 'package:trip_tonic/src/presentation/router/args.dart';
import 'package:trip_tonic/src/presentation/ui/pages/auth/sign_in_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/history/history_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/main/scaffold_with_nav_bar.dart';
import 'package:trip_tonic/src/presentation/ui/pages/news/news_detail_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/news/news_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/profile/profile_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/setting/setting_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/story_create_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_read/story_read_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/waiting_game/waiting_game_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/timeline/timeline_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/top/top_page.dart';
import 'package:trip_tonic/src/usecase/app_user/app_user_provider.dart';

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final routerProvider = Provider(name: 'routerProvider', (ref) {
  final user = ref.watch(userProvider);

  return GoRouter(
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
        name: NewsDetailPage.pageName,
        path: NewsDetailPage.pagePath,
        builder: (BuildContext context, GoRouterState state) =>
            const NewsDetailPage(),
      ),

      // タブ切り替え
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget body) {
          return ScaffoldWithNavBar(body: body);
        },
        routes: <RouteBase>[
          GoRoute(
            name: TimeLinePage.pageName,
            path: TimeLinePage.pagePath,
            builder: (BuildContext context, GoRouterState state) =>
                const TimeLinePage(),
          ),
          GoRoute(
            name: HistoryPage.pageName,
            path: HistoryPage.pagePath,
            builder: (BuildContext context, GoRouterState state) =>
                const HistoryPage(),
          ),
          GoRoute(
            name: NewsPage.pageName,
            path: NewsPage.pagePath,
            builder: (BuildContext context, GoRouterState state) =>
                const NewsPage(),
          ),
          GoRoute(
            name: ProfilePage.pageName,
            path: ProfilePage.pagePath,
            builder: (BuildContext context, GoRouterState state) =>
                const ProfilePage(),
            routes: [
              GoRoute(
                path: SettingPage.pagePath,
                builder: (BuildContext context, GoRouterState state) =>
                    const SettingPage(),
              ),
            ],
          ),
        ],
      ),
    ],
    redirect: (context, state) {
      const topPath = TopPage.pagePath;
      final loggingIn = state.subloc == topPath;
      if (user.value == null && state.subloc == topPath) {
        return loggingIn ? null : topPath;
      }
      if (loggingIn) {
        return TimeLinePage.pagePath;
      }
      return null;
    },
  );
});
