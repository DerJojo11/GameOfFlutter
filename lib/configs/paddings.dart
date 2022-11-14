import 'package:flutter/material.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';

enum Edges {
  top,
  leading,
  bottom,
  trailing,
  all,
  horizontal,
  vertical;

  EdgeInsets getEdgeInsets(Length length) {
    final double lengthValue = length.value;
    switch (this) {
      case Edges.top:
        return EdgeInsets.only(top: lengthValue);
      case Edges.leading:
        return EdgeInsets.only(left: lengthValue);
      case Edges.bottom:
        return EdgeInsets.only(bottom: lengthValue);
      case Edges.trailing:
        return EdgeInsets.only(right: lengthValue);
      case Edges.all:
        return EdgeInsets.all(lengthValue);
      case Edges.horizontal:
        return EdgeInsets.symmetric(horizontal: lengthValue);
      case Edges.vertical:
        return EdgeInsets.symmetric(vertical: lengthValue);
    }
  }
}

enum Length {
  smaller(4),
  small(8),
  medium(16),
  large(32),
  larger(64);

  const Length(this.value);
  final double value;
}

extension EdgesListExtension on List<Edges> {
  EdgeInsets getEdgeInsets(Length length) {
    EdgeInsets edgeInsets = EdgeInsets.zero;

    for (var edge in this) {
      final EdgeInsets insetForEdge = edge.getEdgeInsets(length);
      edgeInsets = edgeInsets.merge(insetForEdge);
    }
    return edgeInsets;
  }
}
