import 'package:brache/src/core/src/component/component.dart';
import 'package:brache/src/core/src/renderer/renderer.dart';

/// Represents a scene in the graphics context.
/// A scene holds a collection of shapes and is responsible for rendering them using its renderer.
abstract class Scene {
  /// Creates a new scene with the provided [renderer].
  Scene({
    required this.renderer,
  });

  /// The renderer used to render the scene.
  final $Renderer renderer;

  /// Adds a [shape] to the scene.
  /// This shape will be rendered when [render] is called.
  void add($Component shape);

  void addAll(List<$Component> shape);

  /// Renders all shapes in the scene using the associated renderer.
  void render();

  /// Retrieves all shapes present in the scene.
  List<$Component> getAllComponents();
}
