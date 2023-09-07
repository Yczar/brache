import 'dart:math' as math;
import 'package:brache/src/core/src/component/component.dart';

import 'package:brache/src/core/src/renderer/renderer.dart';

import 'package:brache/src/core/src/renderer/src/canvas_renderer.dart';

class Point extends $Component<Point> {
  Point({
    required super.x,
    required super.y,
    required super.color,
  });

  @override
  void draw($Renderer renderer) {
    if (renderer is CanvasRenderer) {
      renderer.ctx.beginPath();
      renderer.ctx.arc(x, y, 1, 0, 2 * math.pi);
      renderer.ctx.fillStyle = color;
      renderer.ctx.fill();
    }
  }

  @override
  Point copyWith({double? x, double? y, String? color}) {
    return Point(
      x: x ?? this.x,
      y: y ?? this.y,
      color: color ?? this.color,
    );
  }
}
