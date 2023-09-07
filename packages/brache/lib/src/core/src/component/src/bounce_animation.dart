import 'dart:math' as math;

import 'package:brache/src/core/src/component/component.dart';
import 'package:brache/src/core/src/component/src/animation.dart';

class BounceAnimation extends Animation {
  BounceAnimation({required this.component, required this.distance});

  final $Component component;
  final double distance;

  @override
  void update(double progress) {
    // Bouncing effect based on a simple sin wave for demo
    component.y = component.y + distance * (math.sin(math.pi * progress));
  }
}
