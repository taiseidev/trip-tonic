import 'package:flutter/material.dart';
import 'package:trip_tonic/src/presentation/pages/history/history_page.dart';
import 'package:trip_tonic/src/presentation/pages/main/scaffold_with_nav_bar.dart';
import 'package:trip_tonic/src/presentation/pages/news/news_page.dart';
import 'package:trip_tonic/src/presentation/pages/profile/profile_page.dart';
import 'package:trip_tonic/src/presentation/pages/timeline/timeline_page.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/stack_atoms.dart';

class MainPageTemplate extends StatelessWidget {
  const MainPageTemplate({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return StackAtoms(
      children: List.generate(
        TabType.values.length,
        (index) => Offstage(
          offstage: index != currentIndex,
          child: (() {
            switch (TabType.values[index]) {
              case TabType.home:
                return const TimeLinePage();
              case TabType.history:
                return const HistoryPage();
              case TabType.notification:
                return const NewsPage();
              case TabType.profile:
                return const ProfilePage();
            }
          })(),
        ),
      ),
    );
  }
}
