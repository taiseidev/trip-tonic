import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/domain/usecase/story/create_story.dart';

class StoryDetailPage extends HookConsumerWidget {
  const StoryDetailPage({
    super.key,
    required this.location,
  });

  final String location;

  static const pageName = 'story-detail';
  static const pagePath = '/story-detail';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final test =
        ref.watch(createStoryProvider(location: location, character: 'test'));
    return Scaffold(
      body: Center(
        child: test.when(
          data: (data) {
            return Text(data.choices![0].message!.content.toString());
          },
          error: (error, stacktrace) {
            return null;
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
