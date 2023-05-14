import 'package:flutter/material.dart';

/// タイトル、内容、ok、ngボタンを持つ標準的なモーダルシート
class PrimaryModalBottomSheet extends StatelessWidget {
  const PrimaryModalBottomSheet({
    super.key,
    required this.title,
    required this.content,
    required this.okText,
    required this.ngText,
    required this.onOk,
    required this.onNg,
  });

  final String title;
  final Widget content;
  final String okText;
  final String ngText;
  final VoidCallback onOk;
  final VoidCallback onNg;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      content: content,
      actions: [
        ElevatedButton(
          onPressed: onNg,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey,
            shape: const StadiumBorder(),
          ),
          child: Text(
            ngText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: onOk,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: const StadiumBorder(),
          ),
          child: Text(
            okText,
            style: const TextStyle(
              color: Color(0xffe5a323),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
