import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:trip_tonic/extensions/context_extension.dart';
import 'package:trip_tonic/src/data/model/api_service.dart';

class HistoryPage extends HookConsumerWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = useState<String>('');
    final isLoading = useState<bool>(false);
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              TextFormField(),
              ElevatedButton(
                onPressed: () async {
                  isLoading.value = true;
                  final result = await ApiService(Dio()).createPost('こんにちは');
                  text.value = result.choices![0].message!.content!;
                  isLoading.value = false;
                },
                child: const Text('リクエスト'),
              ),
              Text(text.value),
              Visibility(
                visible: isLoading.value,
                child: Expanded(
                  child: ColoredBox(
                    color: Colors.black26,
                    child: Center(
                      child: LoadingAnimationWidget.fourRotatingDots(
                        color: context.theme.primary,
                        size: 70,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
