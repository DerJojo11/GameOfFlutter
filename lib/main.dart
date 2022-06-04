import 'package:flutter/material.dart';
import 'package:game_of_flutter/injectable/injection.dart';
import 'package:game_of_flutter/my_app.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}
