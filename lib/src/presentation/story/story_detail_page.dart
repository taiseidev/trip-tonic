import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

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
    final test = ref.watch(testProvider(location));
    return Scaffold(
      body: Center(
        child: test.when(
          data: (data) {
            return Text(data);
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

final testProvider =
    FutureProvider.family<String, String>((ref, location) async {
  final response = await http.post(
    Uri.parse(
      'https://asia-northeast1-trip-tonic.cloudfunctions.net/requestChatGPT',
    ),
    body: <String, String>{
      'location': location,
      'character': '山本',
    },
  );
  return response.body;
});
