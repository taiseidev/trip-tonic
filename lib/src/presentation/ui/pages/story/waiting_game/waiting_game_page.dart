import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/presentation/router/args.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_read/story_read_page.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/waiting_game/components/completed_widget.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/waiting_game/components/loading_widget.dart';
import 'package:trip_tonic/src/usecase/story/create_story.dart';

// ChatGPTのAPIのレスポンスが遅いので、待っている間に簡単な
// ゲームで遊べる画面を作成
class WaitingGamePage extends HookConsumerWidget {
  const WaitingGamePage({
    super.key,
    required this.args,
  });

  final CreateStoryArgs args;

  static const pageName = 'waiting-game';
  static const pagePath = '/waiting-game';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFabDisplay = useState(false);
    final createdStory = useState<String>('');

    final story = ref.watch(
      createStoryProvider(
        genre: args.genre,
        keyWord: args.keyWord,
        character: args.characters,
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Center(
              child: Text('Gameを表示する'),
            ),
            story.when(
              data: (data) {
                isFabDisplay.value = true;
                createdStory.value = data;
                return const CompletedWidget();
              },
              loading: LoadingWidget.new,
              error: (error, stack) => Text(error.toString()),
            ),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: isFabDisplay.value,
        child: Padding(
          padding: const EdgeInsets.only(right: 24),
          child: SizedBox(
            width: 30,
            height: 30,
            child: FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () => context.push(
                StoryReadPage.pagePath,
                extra: {
                  'story': createdStory.value,
                },
              ),
              child: const Icon(
                Icons.arrow_forward_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}
