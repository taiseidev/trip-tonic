import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/extensions/context_extension.dart';
import 'package:trip_tonic/features/presentation/history/history_page.dart';
import 'package:trip_tonic/features/presentation/main/app_bar_title.dart';
import 'package:trip_tonic/features/presentation/notification/notification_page.dart';
import 'package:trip_tonic/features/presentation/plan/plan_page.dart';
import 'package:trip_tonic/features/presentation/profile/profile_page.dart';

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

    // ref.handleAsyncValue(
    //   loginStateProvider,
    //   completeMessage: '完了しました',
    //   complete: (context, _) {},
    // );

    // useEffect(
    //   () {
    //     Future(() {
    //       ref.read(userServiceProvider).login();
    //     });
    //     return null;
    //   },
    //   [],
    // );

    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
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
                  return const HomePage();
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
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute<void>(builder: (context) => PlanPage()),
          // );
        },
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
