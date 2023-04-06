import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/text_form_field_atoms.dart';
import 'package:trip_tonic/src/presentation/ui/molecules/story/character_input_form_molecules.dart';

import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/components/character_list_widget.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/components/custom_floating_action_button.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/components/custom_tooltip.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/components/icon_animation.dart';
import 'package:trip_tonic/src/presentation/ui/pages/story/story_create/components/story_create_page_header.dart';

final sampleListProvider = StateProvider<List<String>>((ref) => []);

class StoryCreatePage extends HookConsumerWidget {
  StoryCreatePage({super.key});

  static const pageName = 'story-create';
  static const pagePath = '/story-create';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genreController = useTextEditingController();

    return Scaffold(
      appBar: const StoryCreatePageHeader(),
      body: SafeArea(
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
                      TextFormFieldAtoms(
                        controller: TextEditingController(),
                      ),
                      const Gap(32),
                      CharacterInputFormMolecules(
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
                      const CharacterListWidget(),
                      const Gap(32),
                    ],
                  ),
                ),
                // const IconAnimation(),
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
