import 'package:brache/src/core/src/component/component.dart';
import 'package:brache/src/core/src/renderer/renderer.dart';

import 'package:brache/src/core/src/renderer/src/canvas_renderer.dart';

class Circle extends $Component<Circle> {
  Circle({
    required super.x,
    required super.y,
    required this.radius,
    required super.color,
  });
  final double radius;

  @override
  void draw($Renderer renderer) {
    if (renderer is CanvasRenderer) {
      renderer.ctx.beginPath();
      renderer.ctx.arc(x, y, radius, 0, 2 * 3.14159265);
      renderer.ctx.fillStyle = color;
      renderer.ctx.fill();
    }
  }

  @override
  Circle copyWith({
    double? x,
    double? y,
    String? color,
  }) {
    return Circle(
      x: x ?? this.x,
      y: y ?? this.y,
      radius: radius,
      color: color ?? this.color,
    );
  }
}
