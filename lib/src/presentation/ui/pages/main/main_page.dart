import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/presentation/ui/molecules/floating_action_button_molecules.dart';
import 'package:trip_tonic/src/presentation/ui/organisms/primary_app_bar_organisms.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/story_create_page.dart';
import 'package:trip_tonic/src/presentation/ui/templates/main/main_page_template.dart';

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
    // アクティブなページのインデックスを保持
    final currentIndex = useState<int>(defaultIndex);
    // アクティブなページのタイプを保持
    final currentTabType = TabType.values[currentIndex.value];

    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      appBar: PrimaryAppBarOrganisms(
        currentTabType: currentTabType,
        onPressedLeading: () {},
        leadingIcon: Icons.exit_to_app,
        onPressedActions: () {},
        actionsIcon: Icons.settings,
      ),
      body: MainPageTemplate(currentIndex: currentIndex.value),
      floatingActionButton: FloatingActionButtonMolecules(
        onPressed: () => context.push(StoryCreatePage.pagePath),
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
        onTap: (index) => currentIndex.value = index,
      ),
    );
  }
}
