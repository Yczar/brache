import 'package:brache/src/core/src/component/component.dart';
import 'package:brache/src/core/src/renderer/renderer.dart';

import 'package:brache/src/core/src/renderer/src/canvas_renderer.dart';

class Line extends $Component<Line> {
  Line({
    required super.x,
    required super.y,
    required this.endX,
    required this.endY,
    required super.color,
  });
  final double endX;
  final double endY;

  @override
  void draw($Renderer renderer) {
    if (renderer is CanvasRenderer) {
      renderer.ctx.beginPath();
      renderer.ctx.moveTo(x, y);
      renderer.ctx.lineTo(endX, endY);
      renderer.ctx.strokeStyle = color;
      renderer.ctx.stroke();
    }
  }

  @override
  Line copyWith({double? x, double? y, String? color}) {
    return Line(
      x: x ?? this.x,
      y: y ?? this.y,
      endX: endX,
      endY: endY,
      color: color ?? this.color,
    );
  }
}
