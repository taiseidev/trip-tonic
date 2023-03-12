import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/extensions/context_extension.dart';
import 'package:trip_tonic/extensions/ref_extension.dart';
import 'package:trip_tonic/presentation/home_page.dart';
import 'package:trip_tonic/presentation/main/app_bar_title.dart';
import 'package:trip_tonic/presentation/profile/profile_page.dart';

enum TabType {
  home(Icons.home_outlined, HomePage()),
  history(Icons.history_outlined, HistoryPage()),
  notification(Icons.notifications_none_outlined, NotificationPage()),
  profile(Icons.account_circle_outlined, ProfilePage());

  const TabType(this.icon, this.page);
  final IconData icon;
  final Widget page;
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

    ref.handleAsyncValue(
      loginStateProvider,
      completeMessage: '完了しました',
      complete: (context, _) {},
    );

    useEffect(
      () {
        Future(() {
          ref.read(userServiceProvider).login();
        });
        return null;
      },
      [],
    );

    return Scaffold(
      appBar: AppBar(
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
            child: TabType.values[index].page,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: context.theme.primary,
        onPressed: () {
          // 旅行プラン作成画面へ遷移
        },
        child: const Icon(
          Icons.trip_origin_outlined,
          color: Colors.white,
        ),
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
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
