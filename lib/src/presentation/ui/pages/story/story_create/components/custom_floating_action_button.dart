import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () {
        showDialog<void>(
          context: context,
          builder: (_) {
            return AlertDialog(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.transparent,
              title: const Text('ヘルプ'),
              content: const Text(
                'ここに使い方等を追加する',
              ),
              actions: <Widget>[
                GestureDetector(
                  child: const Text(
                    '閉じる',
                  ),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            );
          },
        );
      },
      child: const Icon(
        Icons.question_mark,
        color: Colors.white,
      ),
    );
  }
}
