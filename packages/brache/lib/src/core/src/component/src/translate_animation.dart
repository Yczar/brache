import 'package:brache/src/core/src/component/component.dart';

class TranslateAnimation {
  TranslateAnimation({
    required this.fromX,
    required this.toX,
    required this.fromY,
    required this.toY,
    required this.target,
  });
  final double fromX;
  final double toX;
  final double fromY;
  final double toY;
  final $Component target;

  void apply(double progress) {
    target.x = fromX + (toX - fromX) * progress;
    target.y = fromY + (toY - fromY) * progress;
  }
}
