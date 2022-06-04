import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Padding withPadding(EdgeInsets padding) {
    return Padding(
      padding: padding,
      child: this,
    );
  }
}
