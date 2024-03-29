import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/gen/assets.gen.dart';

/// 左下のアニメーションを表示するためのウィジェット
class IconAnimation extends HookConsumerWidget {
  const IconAnimation({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationController = useAnimationController(
      duration: const Duration(seconds: 10),
    );
    useAnimation(animationController);

    useEffect(
      () {
        animationController.repeat();
        return null;
      },
    );

    return RotationTransition(
      turns: animationController,
      child: Center(
        child: Image.asset(
          color: Colors.black12,
          Assets.images.un.path,
        ),
      ),
    );
  }
}
