import 'dart:html';
import 'package:brache/src/core/src/component/component.dart';
import 'package:brache/src/core/src/renderer/renderer.dart';

import 'package:brache/src/core/src/scene/scene.dart';

/// Represents a renderer which uses the HTML Canvas API.
class CanvasRenderer implements $Renderer {
  /// Creates a new [CanvasRenderer] instance.
  CanvasRenderer(this.canvas) {
    ctx = canvas.getContext('2d')! as CanvasRenderingContext2D;
  }

  /// The canvas element used for rendering.
  late CanvasElement canvas;

  /// The rendering context used for drawing.
  late CanvasRenderingContext2D ctx;

  @override
  void init() {
    clearScene();
  }

  @override
  void renderShape($Component shape) {
    shape.draw(this);
  }

  @override
  void renderShapes(List<$Component> shapes) {
    for (final shape in shapes) {
      renderShape(shape);
    }
  }

  @override
  void clearScene() {
    ctx.clearRect(0, 0, canvas.width!, canvas.height!);
  }

  @override
  void updateScene(Scene scene) {
    clearScene();
    for (final shape in scene.getAllComponents()) {
      renderShape(shape);
    }
  }

  @override
  void setFillColor(String color) {
    ctx.fillStyle = color;
  }

  @override
  void setStrokeColor(String color) {
    ctx.strokeStyle = color;
  }

  @override
  void beginRenderCycle() {
    saveState();
  }

  @override
  void endRenderCycle() {
    restoreState();
  }

  @override
  void saveState() {
    ctx.save();
  }

  @override
  void restoreState() {
    ctx.restore();
  }

  @override
  void translate(double dx, double dy) {
    ctx.translate(dx, dy);
  }

  @override
  void rotate(double angle) {
    ctx.rotate(angle);
  }

  @override
  void scale(double scaleX, double scaleY) {
    ctx.scale(scaleX, scaleY);
  }

  @override
  void resize(int width, int height) {
    canvas
      ..width = width
      ..height = height;
  }
}
