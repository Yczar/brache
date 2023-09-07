import 'package:brache/src/core/src/renderer/renderer.dart';

/// Represents an abstract graphical component with position and color.
abstract class $Component<T extends $Component<T>> {
  /// Constructs a [$Component] with the specified position and color.
  $Component({
    required this.x,
    required this.y,
    required this.color,
  });

  /// X-coordinate of the component.
  double x;

  /// Y-coordinate of the component.
  double y;

  /// Color of the component.
  final String color;

  /// Abstract drawing method that must be implemented by derived components.
  ///
  /// [renderer]: The renderer used to draw the component.
  void draw($Renderer renderer);

  /// Method to create a copy of the component with adjusted properties.
  /// Subclasses should provide their specific implementation.
  T copyWith({
    double? x,
    double? y,
    String? color,
  });

  void translate(double dx, double dy) {
    this.x += dx;
    this.y += dy;
  }
}
