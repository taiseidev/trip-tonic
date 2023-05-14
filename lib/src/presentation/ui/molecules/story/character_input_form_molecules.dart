// ignore_for_file: inference_failure_on_function_return_type

import 'package:flutter/material.dart';

class CharacterInputFormMolecules extends StatelessWidget {
  const CharacterInputFormMolecules({
    super.key,
    required this.onFieldSubmitted,
  });

  final Function(String value) onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          onFieldSubmitted: onFieldSubmitted,
        ),
      ],
    );
  }
}
