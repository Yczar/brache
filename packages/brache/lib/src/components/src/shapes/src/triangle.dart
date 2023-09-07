import 'package:brache/src/core/src/component/component.dart';
import 'package:brache/src/core/src/renderer/renderer.dart';

import 'package:brache/src/core/src/renderer/src/canvas_renderer.dart';

class Triangle extends $Component<Triangle> {
  Triangle({
    required super.x,
    required super.y,
    required this.x2,
    required this.y2,
    required this.x3,
    required this.y3,
    required super.color,
  });
  final double x2;
  final double y2;
  final double x3;
  final double y3;

  @override
  void draw($Renderer renderer) {
    if (renderer is CanvasRenderer) {
      renderer.ctx.beginPath();
      renderer.ctx.moveTo(x, y);
      renderer.ctx.lineTo(x2, y2);
      renderer.ctx.lineTo(x3, y3);
      renderer.ctx.closePath();
      renderer.ctx.fillStyle = color;
      renderer.ctx.fill();
    }
  }

  @override
  Triangle copyWith({double? x, double? y, String? color}) {
    return Triangle(
      x: x ?? this.x,
      y: y ?? this.y,
      x2: x2,
      y2: y2,
      x3: x3,
      y3: y3,
      color: color ?? this.color,
    );
  }
}
