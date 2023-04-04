import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/presentation/story/story_create/story_create_page.dart';

class CharacterListWidget extends HookConsumerWidget {
  const CharacterListWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
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
        Align(
          alignment: Alignment.centerLeft,
          child: Wrap(
            spacing: 8,
            children: ref
                .watch(sampleListProvider)
                .map(
                  (character) => Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Chip(
                        label: Text(
                          character,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // ここで登場人物を削除する
                        },
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
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
    );
  }
}
