// lib/src/shapes/rectangle.dart

import 'package:brache/src/core/src/component/component.dart';
import 'package:brache/src/core/src/renderer/renderer.dart';

import 'package:brache/src/core/src/renderer/src/canvas_renderer.dart';

import 'package:brache/src/components/src/point.dart';

class Rectangle extends $Component<Rectangle> {
  Rectangle({
    required super.x,
    required super.y,
    required this.width,
    required this.height,
    required super.color,
  });
  final double width;
  final double height;

  @override
  void draw($Renderer renderer) {
    if (renderer is CanvasRenderer) {
      renderer.ctx.beginPath();
      renderer.ctx.rect(x, y, width, height);
      renderer.ctx.fillStyle = color;
      renderer.ctx.fill();
    }
  }

  bool containsPoint(Point point) {
    return point.x >= x &&
        point.x <= x + width &&
        point.y >= y &&
        point.y <= y + height;
  }

  @override
  Rectangle copyWith({double? x, double? y, String? color}) {
    return Rectangle(
      x: x ?? this.x,
      y: y ?? this.y,
      width: width,
      height: height,
      color: color ?? this.color,
    );
  }
}
