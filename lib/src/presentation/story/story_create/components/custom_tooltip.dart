import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:trip_tonic/src/presentation/story/story_create/components/bubble_painter.dart';

class CustomTooltip extends HookWidget {
  const CustomTooltip({
    super.key,
    required this.child,
    required this.message,
  });
  final Widget child;
  final String message;

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(seconds: 1),
    )..repeat();
    useAnimation(animationController);

    final animation =
        Tween<double>(begin: -5, end: 5).animate(animationController);

    return SizedBox(
      height: 300,
      width: 200,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          child,
          AnimatedBuilder(
            builder: (BuildContext context, Widget? child) {
              return Transform.translate(
                offset: Offset(0, animation.value),
                child: child,
              );
            },
            animation: animation,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: CustomPaint(
                painter: BubblePainter(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                  child: Text(
                    message,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
