import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/usecase/story/create_story.dart';

// ChatGPTのAPIのレスポンスが遅いので、待っている間に簡単な
// ゲームで遊べる画面を作成
class WaitingGamePage extends HookConsumerWidget {
  const WaitingGamePage({super.key});

  static const pageName = 'waiting-game';
  static const pagePath = '/waiting-game';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final story = ref.watch(
      createStoryProvider(
        genre: '',
        keyWord: '',
        character: '',
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            story.when(
              data: (data) => Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    '作成完了',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              loading: () => Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        '作成中...',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Gap(8),
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              error: (error, stack) => Text(error.toString()),
            ),
            const Center(
              child: Text('Gameを表示する'),
            ),
          ],
        ),
      ),
    );
  }
}
