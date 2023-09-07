import 'package:brache/src/core/src/component/component.dart';
import 'package:brache/src/core/src/renderer/renderer.dart';

import 'package:brache/src/core/src/renderer/src/canvas_renderer.dart';

import 'package:brache/src/components/src/point.dart';

class Path extends $Component<Path> {
  Path({
    required this.points,
    required super.color,
  }) : super(x: points[0].x, y: points[0].y);
  final List<Point> points;

  @override
  void draw($Renderer renderer) {
    if (renderer is CanvasRenderer && points.isNotEmpty) {
      renderer.ctx.beginPath();
      renderer.ctx.moveTo(points[0].x, points[0].y);

      for (final point in points.skip(1)) {
        renderer.ctx.lineTo(point.x, point.y);
      }

      renderer.ctx.strokeStyle = color;
      renderer.ctx.stroke();
    }
  }

  @override
  Path copyWith({double? x, double? y, String? color}) {
    return Path(
      points: points,
      color: color ?? this.color,
    );
  }
}
