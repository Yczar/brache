import 'dart:math' as math;
import 'package:brache/src/core/src/component/component.dart';

import 'package:brache/src/core/src/renderer/renderer.dart';

import 'package:brache/src/core/src/renderer/src/canvas_renderer.dart';

class Ellipse extends $Component<Ellipse> {
  Ellipse({
    required super.x,
    required super.y,
    required this.radiusX,
    required this.radiusY,
    required super.color,
  });
  final double radiusX;
  final double radiusY;

  @override
  void draw($Renderer renderer) {
    if (renderer is CanvasRenderer) {
      renderer.ctx.beginPath();
      renderer.ctx.ellipse(x, y, radiusX, radiusY, 0, 0, 2 * math.pi, false);
      renderer.ctx.fillStyle = color;
      renderer.ctx.fill();
    }
  }

  @override
  Ellipse copyWith({double? x, double? y, String? color}) {
    return Ellipse(
      x: x ?? this.x,
      y: y ?? this.y,
      radiusX: radiusX,
      radiusY: radiusY,
      color: color ?? this.color,
    );
  }
}
