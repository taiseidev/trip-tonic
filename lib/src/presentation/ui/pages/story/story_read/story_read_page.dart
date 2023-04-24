import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/domain/entities/story/story.dart';
import 'package:trip_tonic/src/presentation/ui/pages/main/scaffold_with_nav_bar.dart';

class StoryReadPage extends HookConsumerWidget {
  const StoryReadPage({
    super.key,
    required this.story,
  });

  final Story story;

  static const pageName = 'story-read';
  static const pagePath = '/story-read';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SelectionArea(
        child: Stack(
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1553434320-e9f5757140b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            // 灰色の透明マスクを表示する
            Container(
              color: Colors.grey.withOpacity(0.4),
              width: double.infinity,
              height: double.infinity,
            ),
            Scrollbar(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            story.title,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SelectableText(
                        story.content,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const Gap(40)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () => context.go(ScaffoldWithNavBar.pagePath),
        child: const Icon(Icons.arrow_back_rounded),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
    );
  }
}
