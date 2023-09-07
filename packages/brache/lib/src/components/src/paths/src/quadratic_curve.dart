import 'package:brache/src/core/src/component/component.dart';
import 'package:brache/src/core/src/renderer/renderer.dart';

import 'package:brache/src/core/src/renderer/src/canvas_renderer.dart';

class QuadraticCurve extends $Component<QuadraticCurve> {
  QuadraticCurve({
    required super.x,
    required super.y,
    required this.cpx,
    required this.cpy,
    required this.endX,
    required this.endY,
    required super.color,
  });
  final double cpx;
  final double cpy;
  final double endX;
  final double endY;

  @override
  void draw($Renderer renderer) {
    if (renderer is CanvasRenderer) {
      renderer.ctx.beginPath();
      renderer.ctx.moveTo(x, y);
      renderer.ctx.quadraticCurveTo(cpx, cpy, endX, endY);
      renderer.ctx.strokeStyle = color;
      renderer.ctx.stroke();
    }
  }

  @override
  QuadraticCurve copyWith({double? x, double? y, String? color}) {
    return QuadraticCurve(
      x: x ?? this.x,
      y: y ?? this.y,
      cpx: cpx,
      cpy: cpy,
      endX: endX,
      endY: endY,
      color: color ?? this.color,
    );
  }
}
