import 'package:brache/src/core/src/component/component.dart';
import 'package:brache/src/core/src/renderer/renderer.dart';

import 'package:brache/src/core/src/renderer/src/canvas_renderer.dart';

class Square extends $Component<Square> {
  Square({
    required super.x,
    required super.y,
    required this.sideLength,
    required super.color,
  });
  final double sideLength;

  @override
  void draw($Renderer renderer) {
    if (renderer is CanvasRenderer) {
      renderer.ctx.beginPath();
      renderer.ctx.rect(x, y, sideLength, sideLength);
      renderer.ctx.fillStyle = color;
      renderer.ctx.fill();
    }
  }

  @override
  Square copyWith({
    double? x,
    double? y,
    String? color,
  }) {
    return Square(
      x: x ?? this.x,
      y: y ?? this.y,
      sideLength: sideLength,
      color: color ?? this.color,
    );
  }
}
