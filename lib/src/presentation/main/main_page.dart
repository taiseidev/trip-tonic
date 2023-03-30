import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/extensions/context_extension.dart';
import 'package:trip_tonic/src/presentation/history/history_page.dart';
import 'package:trip_tonic/src/presentation/main/app_bar_title.dart';
import 'package:trip_tonic/src/presentation/notification/notification_page.dart';
import 'package:trip_tonic/src/presentation/profile/profile_page.dart';
import 'package:trip_tonic/src/presentation/story/story_page.dart';

/// タブ一覧
enum TabType {
  home(Icons.home_outlined),
  history(Icons.history_outlined),
  notification(Icons.notifications_none_outlined),
  profile(Icons.account_circle_outlined);

  const TabType(this.icon);
  final IconData icon;
}

/// タブナビゲーションの実装、アプリケーションの初期化処理を担う
class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  static const pageName = 'main';
  static const pagePath = '/main';

  static const defaultIndex = 0;
  static const radius = 32.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState<int>(defaultIndex);
    final currentTabType = TabType.values[currentIndex.value];

    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        // 仮でサインアウト処理を追加
        leading: IconButton(
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
          },
          icon: const Icon(Icons.exit_to_app),
        ),
        title: AppBarTitle(type: currentTabType),
        actions: [
          // プロフィールページのみ設定ボタンを表示
          if (currentTabType == TabType.profile)
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
              ),
            )
        ],
      ),
      body: Stack(
        children: List.generate(
          TabType.values.length,
          (index) => Offstage(
            offstage: index != currentIndex.value,
            child: (() {
              switch (TabType.values[index]) {
                case TabType.home:
                  return StoryPage();
                case TabType.history:
                  return const HistoryPage();
                case TabType.notification:
                  return const NotificationPage();
                case TabType.profile:
                  return const ProfilePage();
              }
            })(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: context.theme.primary,
        onPressed: () {},
        child: const Icon(
          Icons.trip_origin_outlined,
          color: Colors.white,
        ),
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: context.theme.primary,
        icons: TabType.values.map((tab) => tab.icon).toList(),
        activeIndex: currentIndex.value,
        activeColor: context.theme.primary,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: radius,
        rightCornerRadius: radius,
        onTap: (index) => currentIndex.value = index,
      ),
    );
  }
}
