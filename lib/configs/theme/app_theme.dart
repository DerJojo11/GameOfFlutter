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
          color: Color(0xFF331C0E),
          fontFamily: 'GameOfThrones',
        ),
        bodyText2: TextStyle(
          color: Color(0xFF331C0E),
          fontSize: 14,
          fontFamily: 'GameOfThrones',
        ),
        subtitle1: TextStyle(
          color: Color(0xFF331C0E),
          fontSize: 16,
          fontFamily: 'GameOfThrones',
        ),
        subtitle2: TextStyle(
          color: Color(0xFF331C0E),
          fontSize: 14,
          fontFamily: 'GameOfThrones',
        ),
        caption: TextStyle(
          fontSize: 12,
          color: Color(0xFF331C0E),
          fontFamily: 'GameOfThrones',
        ),
        headline1: TextStyle(
          color: Color(0xFF331C0E),
          fontSize: 60,
          fontFamily: 'GameOfThrones',
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          color: Color(0xFF331C0E),
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontFamily: 'GameOfThrones',
        ),
        headline5: TextStyle(
          color: Color(0xFF331C0E),
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontFamily: 'GameOfThrones',
        ),
        headline6: TextStyle(
          color: Color(0xFF331C0E),
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'GameOfThrones',
        ),
      );
}
