import 'package:brache/src/core/src/component/component.dart';

import 'package:brache/src/core/src/scene/scene.dart';

/// Represents the base renderer which should be implemented by
/// specific rendering backends, like Canvas or WebGL.
abstract class $Renderer {
  /// Initializes the renderer with the necessary configurations.
  void init();

  /// Renders a single [shape] onto the rendering target.
  void renderShape($Component shape);

  /// Renders a list of [shapes] onto the rendering target.
  void renderShapes(List<$Component> shapes);

  /// Clears the entire scene, removing all rendered shapes.
  void clearScene();

  /// Updates the scene by re-rendering [scene] and its shapes.
  void updateScene(Scene scene);

  /// Sets the fill color for subsequent rendering operations.
  void setFillColor(String color);

  /// Sets the stroke color for subsequent rendering operations.
  void setStrokeColor(String color);

  /// Resizes the rendering target to the specified [width] and [height].
  void resize(int width, int height);

  /// Marks the beginning of a series of rendering operations.
  /// Useful for batch operations or setting up specific states.
  void beginRenderCycle();

  /// Marks the end of a series of rendering operations.
  /// This might be useful for committing batch operations or cleaning up after rendering.
  void endRenderCycle();

  /// Saves the current rendering state. This is useful for transformations
  /// where you want to revert back to a previous state.
  void saveState();

  /// Restores the last saved rendering state.
  void restoreState();

  /// Translates (moves) the rendering origin by the specified [dx] and [dy].
  void translate(double dx, double dy);

  /// Rotates the rendering space by the specified [angle] (usually in radians).
  void rotate(double angle);

  /// Scales the rendering space by the specified [scaleX] and [scaleY].
  void scale(double scaleX, double scaleY);
}
