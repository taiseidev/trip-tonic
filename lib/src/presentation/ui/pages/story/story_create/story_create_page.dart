import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/text_form_field_atoms.dart';

import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/components/custom_floating_action_button.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/components/custom_tooltip.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/components/icon_animation.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/components/story_create_page_header.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/story_create_view_model.dart';

final sampleListProvider = StateProvider<List<String>>((ref) => []);

class StoryCreatePage extends HookConsumerWidget {
  StoryCreatePage({super.key});

  static const pageName = 'story-create';
  static const pagePath = '/story-create';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storyCreateState = ref.watch(storyCreateViewModelProvider);
    final characters = storyCreateState.asData?.value.characters?.characters;

    final selectedGenre = useState<String>('純文学');

    final keyWordController = useTextEditingController();
    final characterController = useTextEditingController();

    return Scaffold(
      appBar: const StoryCreatePageHeader(),
      body: storyCreateState.when(
        data: (data) {
          return SafeArea(
            bottom: false,
            child: Center(
              child: Form(
                key: _formKey,
                child: Stack(
                  children: [
                    const IconAnimation(),
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
                                hint: const Text('選択してください'),
                                value: selectedGenre.value,
                                items: data.genres
                                    .map(
                                      (e) => DropdownMenuItem(
                                        value: e.genre,
                                        child: Text(
                                          e.genre,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (value) {
                                  if (value != null) {
                                    selectedGenre.value = value;
                                  }
                                },
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
                          TextFormFieldAtoms(
                            controller: TextEditingController(),
                          ),
                          const Gap(32),
                          Column(
                            children: [
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
                                controller: characterController,
                                onFieldSubmitted: (value) {
                                  characterController.clear();
                                  // 追加するメソッド
                                  // characters.value = [
                                  //   ...characters.value,
                                  //   value,
                                  // ];
                                },
                              ),
                            ],
                          ),
                          const Gap(32),
                          Column(
                            children: [
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
                              if (characters != null)
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Wrap(
                                    spacing: 8,
                                    children: characters
                                        .map(
                                          (character) => Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Chip(
                                                label: Text(
                                                  character.text,
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                // 削除するメソッド
                                                // onTap: () {
                                                //   characters. = [
                                                //     ...characters.value.where(
                                                //       (element) =>
                                                //           element != character,
                                                //     )
                                                //   ];
                                                // },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(2),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(),
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      50,
                                                    ),
                                                  ),
                                                  child: const Icon(
                                                    Icons.clear,
                                                    size: 14,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                            ],
                          ),
                          const Gap(32),
                        ],
                      ),
                    ),
                    // const IconAnimation(),
                  ],
                ),
              ),
            ),
          );
        },
        error: (error, stackTrace) {
          return null;
        },
        loading: Loading.new,
      ),
      floatingActionButton: const CustomTooltip(
        message: 'ヘルプ',
        child: CustomFloatingActionButton(),
      ),
    );
  }
}
