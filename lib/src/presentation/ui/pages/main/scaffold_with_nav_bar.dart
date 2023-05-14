import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/presentation/hooks/user_effect_once.dart';
import 'package:trip_tonic/src/presentation/ui/components/app_bar_title.dart';
import 'package:trip_tonic/src/presentation/ui/molecules/floating_action_button_molecules.dart';
import 'package:trip_tonic/src/presentation/ui/pages/history/history_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/news/news_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/profile/profile_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/setting/setting_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/story_create_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/timeline/timeline_page.dart';
import 'package:trip_tonic/src/usecase/app_user/app_user_provider.dart';

// ドロワー表示用のキー
final drawerKeyProvider = Provider((ref) => GlobalKey<ScaffoldState>());

/// タブ一覧
enum TabType {
  home(Icons.home_outlined, TimeLinePage.pagePath),
  history(Icons.history_outlined, HistoryPage.pagePath),
  notification(Icons.notifications_none_outlined, NewsPage.pagePath),
  profile(Icons.account_circle_outlined, ProfilePage.pagePath);

  const TabType(this.icon, this.pagePath);
  final IconData icon;
  final String pagePath;
}

/// タブナビゲーションの実装、アプリケーションの初期化処理を担う
class ScaffoldWithNavBar extends HookConsumerWidget {
  const ScaffoldWithNavBar({
    super.key,
    required this.body,
  });

  static const pageName = 'nav';
  static const pagePath = '/nav';

  static const defaultIndex = 0;
  static const radius = 32.0;

  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // アクティブなページのインデックスを保持
    final currentIndex = useState<int>(defaultIndex);
    // アクティブなページのタイプを保持
    final currentTabType = TabType.values[currentIndex.value];

    useEffectOnce(() {
      // ログインユーザ情報を取得
      Future(() => ref.read(appUserNotifierProvider.future));
      return null;
    });

    // タブを切り替える
    void onItemTapped(int index) {
      currentIndex.value = index;
      context.go(TabType.values[index].pagePath);
    }

    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: AppBarTitle(type: currentTabType),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () => context.push(SettingPage.pagePath),
              icon: const Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: body,
      floatingActionButton: FloatingActionButtonMolecules(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => StoryCreatePage(),
          ),
        ),
        backgroundColor: Colors.black,
        iconColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Colors.black,
        icons: TabType.values.map((tab) => tab.icon).toList(),
        activeIndex: currentIndex.value,
        activeColor: Colors.black,
        inactiveColor: Colors.black26,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: radius,
        rightCornerRadius: radius,
        onTap: onItemTapped,
      ),
    );
  }
}
