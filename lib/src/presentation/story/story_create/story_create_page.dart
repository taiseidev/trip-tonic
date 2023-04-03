import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/extensions/ref_extension.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/presentation/story/story_create/components/custom_floating_action_button.dart';
import 'package:trip_tonic/src/presentation/story/story_create/components/custom_tooltip.dart';
import 'package:trip_tonic/src/presentation/story/story_create/components/icon_animation.dart';

final sampleListProvider = StateProvider<List<String>>((ref) => []);

class StoryCreatePage extends HookConsumerWidget {
  StoryCreatePage({super.key});

  static const pageName = 'story-create';
  static const pagePath = '/story-create';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genreController = useTextEditingController();

    ref.handleAsyncValue<void>(
      loadingStateProvider,
    );

    OverlayEntry? tooltipOverlayEntry;

    void _showTooltip(
      BuildContext context,
      Offset tapPosition,
      String message,
      String character,
    ) {
      if (tooltipOverlayEntry != null) {
        tooltipOverlayEntry!.remove();
      }

      tooltipOverlayEntry = OverlayEntry(
        builder: (BuildContext context) {
          return Positioned(
            top: tapPosition.dy + 20,
            left: tapPosition.dx,
            child: CustomTooltips(message: message, character: character),
          );
        },
      );

      Overlay.of(context).insert(tooltipOverlayEntry!);
    }

    void _hideTooltip() {
      tooltipOverlayEntry?.remove();
      tooltipOverlayEntry = null;
    }

    return Scaffold(
      appBar: AppBar(
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
              onPressed: () {},
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
      ),
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Form(
            key: _formKey,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      const Gap(32),
                      const Text(
                        '自分好みの小説を作成しよう！',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Gap(32),
                      // ジャンル選択
                      // Firestoreからジャンルの一覧を取得して表示する。
                      Row(
                        children: [
                          const Text(
                            'ジャンル選択：',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          DropdownButton<String>(
                            value: 'ホラー',
                            items: const [
                              DropdownMenuItem(
                                value: 'ホラー',
                                child: Text(
                                  'ホラー',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'ファンタジー',
                                child: Text(
                                  'ファンタジー',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) =>
                                genreController.text = value ?? '',
                          ),
                        ],
                      ),
                      const Gap(32),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'キーワード入力：',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      // キーワード入力
                      // バックエンド側でプロンプトインジェクション対策を行う。
                      TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(width: 5),
                          ),
                        ),
                      ),
                      const Gap(32),
                      // 複数入力できるようにする
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '登場人物：',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      // 登場人物入力
                      TextFormField(
                        onFieldSubmitted: (value) {
                          ref.read(sampleListProvider.notifier).update(
                                (state) => state = [
                                  ...ref.read(sampleListProvider),
                                  value
                                ],
                              );
                        },
                      ),
                      const Gap(32),
                      // 登場人物一覧
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '登場人物一覧：',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                          spacing: 8,
                          children: ref
                              .watch(sampleListProvider)
                              .map(
                                (character) => GestureDetector(
                                  onTapDown: (details) {
                                    _showTooltip(
                                      context,
                                      details.globalPosition,
                                      '削除',
                                      character,
                                    );
                                  },
                                  child: Chip(
                                    label: Text(
                                      character,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      const Gap(32),
                    ],
                  ),
                ),
                const IconAnimation(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: const CustomTooltip(
        message: 'ヘルプ',
        child: CustomFloatingActionButton(),
      ),
    );
  }
}

class CustomTooltips extends ConsumerWidget {
  const CustomTooltips({
    super.key,
    required this.message,
    required this.character,
  });

  final String message;
  final String character;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onDoubleTap: () {
        ref.read(sampleListProvider.notifier).update(
              (state) => state = [
                ...ref
                    .read(sampleListProvider)
                    .where((element) => element != character)
              ],
            );
      },
      child: Material(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            message,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
