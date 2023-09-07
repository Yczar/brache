import 'package:brache/src/core/src/component/component.dart';
import 'package:brache/src/core/src/renderer/renderer.dart';

import 'package:brache/src/core/src/renderer/src/canvas_renderer.dart';

class BezierCurve extends $Component<BezierCurve> {
  BezierCurve({
    required super.x,
    required super.y,
    required this.cp1x,
    required this.cp1y,
    required this.cp2x,
    required this.cp2y,
    required this.endX,
    required this.endY,
    required super.color,
  });
  final double cp1x;
  final double cp1y;
  final double cp2x;
  final double cp2y;
  final double endX;
  final double endY;

  @override
  void draw($Renderer renderer) {
    if (renderer is CanvasRenderer) {
      renderer.ctx.beginPath();
      renderer.ctx.moveTo(x, y);
      renderer.ctx.bezierCurveTo(cp1x, cp1y, cp2x, cp2y, endX, endY);
      renderer.ctx.strokeStyle = color;
      renderer.ctx.stroke();
    }
  }

  @override
  BezierCurve copyWith({double? x, double? y, String? color}) {
    return BezierCurve(
      x: x ?? this.x,
      y: y ?? this.y,
      cp1x: cp1x,
      cp1y: cp1y,
      cp2x: cp2x,
      cp2y: cp2y,
      endX: endX,
      endY: endY,
      color: color ?? this.color,
    );
  }
}
