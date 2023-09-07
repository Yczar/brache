import 'package:brache/src/core/src/app/app.dart';
import 'package:brache/src/core/src/renderer/src/canvas_renderer.dart';
import 'package:brache/src/core/src/scene/scene.dart';
import 'package:brache/src/core/src/scene/src/basic_scene.dart';
import 'package:brache/src/utils/utils.dart';

/// Abstract base class for all Brache applications.
abstract class Brache implements $App {
  ///
  Brache() {
    renderer = getCanvasRenderer('#output-canvas');

    scene = BasicScene(
      renderer: renderer,
    );
  }
  late CanvasRenderer renderer;
  late Scene scene;

  @override
  void setup() {}

  @override
  void preFirstRender() {}

  @override
  void postRender() {
    scene.render();
  }

  @override
  void onResize() {}

  @override
  void onPause() {}

  @override
  void onResume() {}

  @override
  void onDestroy() {}
}
