import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

const Color _primary = Color(0xFF67331E);
const Color _secondary = Color(0xFFC38D5F);
const Color _error = Colors.red;
const Color _text = Color(0xFF331C0E);
const Color _background = Color(0xFFFCFEF0);
const Color _surface = Color(0xFFC38D5F);

@injectable
class AppTheme {
  ThemeData get themeData => ThemeData(
        colorScheme: _colorScheme,
        textTheme: textTheme,
        fontFamily: 'GameOfThrones',
      );

  ColorScheme get _colorScheme => const ColorScheme(
        brightness: Brightness.light,
        primary: _primary,
        onPrimary: _background,
        secondary: _secondary,
        onSecondary: _background,
        error: _error,
        onError: _background,
        background: _background,
        onBackground: _text,
        surface: _surface,
        onSurface: _background,
      );

  TextTheme get textTheme => const TextTheme(
        bodyText1: TextStyle(
          fontSize: 16,
          color: _text,
        ),
        bodyText2: TextStyle(
          color: _text,
          fontSize: 14,
        ),
        subtitle1: TextStyle(
          color: _text,
          fontSize: 16,
        ),
        subtitle2: TextStyle(
          color: _text,
          fontSize: 14,
        ),
        caption: TextStyle(
          fontSize: 12,
          color: _text,
        ),
        headline1: TextStyle(
          color: _text,
          fontSize: 60,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          color: _text,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        headline5: TextStyle(
          color: _text,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        headline6: TextStyle(
          color: _text,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      );
}
