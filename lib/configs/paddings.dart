import 'package:flutter/material.dart';

abstract class Paddings {
  // padding values
  static const double smallerValue = 4;
  static const double smallValue = 8;
  static const double mediumValue = 16;
  static const double largeValue = 32;
  static const double largerValue = 64;

  // all
  static const EdgeInsets small = EdgeInsets.all(smallValue);
  static const EdgeInsets smaller = EdgeInsets.all(smallerValue);
  static const EdgeInsets medium = EdgeInsets.all(mediumValue);
  static const EdgeInsets large = EdgeInsets.all(largeValue);
  static const EdgeInsets larger = EdgeInsets.all(largerValue);

  // left
  static const EdgeInsets leftSmaller = EdgeInsets.only(left: smallerValue);
  static const EdgeInsets leftSmall = EdgeInsets.only(left: smallValue);
  static const EdgeInsets leftMedium = EdgeInsets.only(left: mediumValue);
  static const EdgeInsets leftLarge = EdgeInsets.only(left: largeValue);
  static const EdgeInsets leftLarger = EdgeInsets.only(left: largerValue);

  // padding right
  static const EdgeInsets rightSmaller = EdgeInsets.only(right: smallerValue);
  static const EdgeInsets rightSmall = EdgeInsets.only(right: smallValue);
  static const EdgeInsets rightMedium = EdgeInsets.only(right: mediumValue);
  static const EdgeInsets rightLarge = EdgeInsets.only(right: largeValue);
  static const EdgeInsets rightLarger = EdgeInsets.only(right: largerValue);

  // padding bottom
  static const EdgeInsets bottomSmaller = EdgeInsets.only(bottom: smallerValue);
  static const EdgeInsets bottomSmall = EdgeInsets.only(bottom: smallValue);
  static const EdgeInsets bottomMedium = EdgeInsets.only(bottom: mediumValue);
  static const EdgeInsets bottomLarge = EdgeInsets.only(bottom: largeValue);
  static const EdgeInsets bottomLarger = EdgeInsets.only(bottom: largerValue);

  // top padding
  static const EdgeInsets topSmaller = EdgeInsets.only(top: smallerValue);
  static const EdgeInsets topSmall = EdgeInsets.only(top: smallValue);
  static const EdgeInsets topMedium = EdgeInsets.only(top: mediumValue);
  static const EdgeInsets topLarge = EdgeInsets.only(top: largeValue);
  static const EdgeInsets topLarger = EdgeInsets.only(top: largerValue);
}
