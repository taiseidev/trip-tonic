import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/presentation/pages/story/waiting_game/waiting_game_page.dart';

class StoryCreatePageHeader extends HookConsumerWidget
    implements PreferredSizeWidget {
  const StoryCreatePageHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: const Icon(Icons.arrow_back),
      ),
      title: const Text(
        '小説作成',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: ElevatedButton(
            onPressed: () => context.push(WaitingGamePage.pagePath),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            child: const Text(
              '作成',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
