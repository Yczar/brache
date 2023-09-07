import 'package:brache/src/core/src/component/component.dart';

import 'package:brache/src/core/src/renderer/renderer.dart';

/// Represents a Column of components laid out vertically.
class Column extends $Component<Column> {
  /// Constructs a [Column] with the specified position, color, and children.
  Column({
    required super.x,
    required super.y,
    required super.color,
    required this.children,
  });

  /// The list of child components in the column.
  final List<$Component> children;

  /// Draws the column on the provided renderer.
  @override
  void draw($Renderer renderer) {
    // Starting position for drawing children.
    var currentY = y;

    for (final child in children) {
      // Adjust child's y-coordinate based on the previous children.
      final adjustedChild = child.copyWith(y: currentY)..draw(renderer);

      // Update currentY for the next child. Here, we'll need a way to determine the height of a child.
      // For simplicity, let's assume a fixed height for now.
      currentY += 50; // Assuming each child occupies a height of 50 units.
    }
  }

  /// Creates a copy of this column with adjusted properties.
  @override
  Column copyWith({
    double? x,
    double? y,
    String? color,
    List<$Component>? children,
  }) {
    return Column(
      x: x ?? this.x,
      y: y ?? this.y,
      color: color ?? this.color,
      children: children ?? this.children,
    );
  }
}
