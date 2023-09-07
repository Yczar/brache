import 'dart:html';

import 'package:brache/src/core/src/renderer/src/canvas_renderer.dart';

CanvasRenderer getCanvasRenderer(String canvasId) {
  final canvas = querySelector(canvasId) as CanvasElement?;

  if (canvas == null) {
    throw Exception('No canvas element found with the provided ID: $canvasId');
  }
  canvas
    ..width = window.innerWidth
    ..height = window.innerHeight;
  return CanvasRenderer(canvas);
}
