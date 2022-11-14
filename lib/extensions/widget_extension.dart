import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/paddings.dart';

extension WidgetExtension on Widget {
  /// Creates a Padding Widget that is around the widget.
  ///
  /// You can define the [Edges] where the Padding should be aligned. Default
  /// is [Edges.all].
  /// If the length of the padding should be smalle, define it with the [Length]
  /// argument. Default is [Length.medium]
  Widget withPadding({
    List<Edges>? edges,
    Length? length,
    bool isSliver = false,
  }) {
    final List<Edges> newEdges = edges ?? [Edges.all];
    final Length newLength = length ?? Length.medium;

    EdgeInsets padding = EdgeInsets.zero;

    padding = newEdges.getEdgeInsets(newLength);

    return isSliver
        ? SliverPadding(
            padding: padding,
            sliver: this,
          )
        : Padding(
            padding: padding,
            child: this,
          );
  }
}

extension MergeEdgeInsetsExtension on EdgeInsets {
  EdgeInsets merge(EdgeInsets insets) {
    final EdgeInsets newInsets = copyWith(
      top: insets.top != 0 ? insets.top : top,
      left: insets.left != 0 ? insets.left : left,
      right: insets.right != 0 ? insets.right : right,
      bottom: insets.bottom != 0 ? insets.bottom : bottom,
    );

    return newInsets;
  }
}
