import 'dart:math';

import 'package:brache/src/core/src/component/component.dart';

class ShakeAnimation {
  // Number of shakes back and forth.

  ShakeAnimation({
    required this.component,
    this.shakeAmount = 10.0,
    this.duration = const Duration(milliseconds: 500),
    this.shakeCount = 5,
  });
  final $Component component;
  final double shakeAmount; // Maximum translation in pixels.
  final Duration duration;
  final int shakeCount;

  void start() {
    final startTimestamp = DateTime.now().millisecondsSinceEpoch.toDouble();
    void tick() {
      final now = DateTime.now().millisecondsSinceEpoch.toDouble();
      final elapsed = (now - startTimestamp) % duration.inMilliseconds;
      final progress = elapsed / duration.inMilliseconds;

      final shake = sin(progress * pi * shakeCount) * shakeAmount;

      component.translate(shake, 0); // Horizontal shake; No vertical movement.

      if (elapsed < duration.inMilliseconds) {
        // Schedule next frame.
        Future.delayed(const Duration(milliseconds: 16), tick);
      } else {
        // Reset component to its original position at the end of the animation.
        component.translate(0, 0);
      }
    }

    tick();
  }
}
