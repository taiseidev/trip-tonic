import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

/// ローディングの表示有無
final loadingProvider = NotifierProvider<LoadingNotifier, bool>(
  LoadingNotifier.new,
);

class LoadingNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  /// ローディングを表示する
  void show() => state = true;

  /// ローディングを非表示にする
  void hide() => state = false;
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black26,
      child: Center(
        child: LoadingAnimationWidget.fourRotatingDots(
          color: const Color.fromARGB(255, 128, 219, 249),
          size: 70,
        ),
      ),
    );
  }
}
