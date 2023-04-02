import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/extensions/ref_extension.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/usecase/story/create_story.dart';

class StoryCreatePage extends HookConsumerWidget {
  StoryCreatePage({super.key});

  static const pageName = 'story-create';
  static const pagePath = '/story-create';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characters = useState<List<String>>([]);
    final text = useState<String?>(null);

    final genreController = useTextEditingController();
    final keyWordController = useTextEditingController();
    final characterController = useTextEditingController();

    ref.handleAsyncValue<void>(
      loginStateProvider,
      completeMessage: '小説の作成が完了しました。',
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (text.value != null) Text(text.value!),
                    if (text.value == null)
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // ジャンル選択
                          // Firestoreからジャンルの一覧を取得して表示する。
                          DropdownButton<String>(
                            value: '宇宙ファンタジー',
                            items: const [
                              DropdownMenuItem(
                                value: '宇宙ファンタジー',
                                child: Text('宇宙ファンタジー'),
                              )
                            ],
                            onChanged: (value) =>
                                genreController.text = value ?? '',
                          ),

                          const Text('キーワード入力'),
                          // キーワード入力
                          // バックエンド側でプロンプトインジェクション対策を行う。
                          TextFormField(),

                          // 複数入力できるようにする
                          const Text('登場人物入力'),
                          // 登場人物入力
                          TextFormField(
                            onFieldSubmitted: (value) {
                              characters.value = [...characters.value, value];
                            },
                          ),

                          // 登場人物一覧
                          const Text('登場人物一覧'),
                          Wrap(
                            children: characters.value
                                .map(
                                  (character) => Chip(
                                    label: Text(character),
                                  ),
                                )
                                .toList(),
                          ),
                          // ChatGPTを（バックエンド側）叩いて小説の作成と保存処理を行う。
                          ElevatedButton(
                            onPressed: () async {
                              final content =
                                  await ref.read(createStoryProvider)(
                                genre: genreController.text,
                                keyWord: keyWordController.text,
                                character: characterController.text,
                              );
                              text.value = content;
                            },
                            child: const Text('作成する'),
                          )
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
