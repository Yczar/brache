import 'package:brache/src/core/src/component/component.dart';

import 'package:brache/src/core/src/scene/scene.dart'; // Assuming you have this file to represent basic shapes

class BasicScene extends Scene {
  BasicScene({
    required super.renderer,
  });
  final List<$Component> _shapes = [];

  @override
  void add(dynamic shape) {
    if (shape is $Component) {
      print('Adding shape to scene');
      _shapes.add(shape);
    } else {
      throw ArgumentError(
        'Only shapes derived from the Shape class can be added to the BasicScene.',
      );
    }
  }

  @override
  void render() {
    // You can choose to clear the scene before rendering.
    // Depending on the logic, you might not always want to do this,
    // especially if you're layering shapes.
    clear();

    for (final shape in _shapes) {
      renderer.renderShape(shape);
    }
  }

  void clear() {
    renderer.clearScene();
  }

  @override
  List<$Component> getAllComponents() => _shapes;

  @override
  void addAll(List<$Component> components) {
    for (final component in components) {
      add(component);
    }
  }
}
