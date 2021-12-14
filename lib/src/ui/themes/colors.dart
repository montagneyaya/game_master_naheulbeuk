import 'package:flutter/material.dart';

ColorScheme terreDeFanghColors() {
  final ColorScheme base = ColorScheme(
    primary: Colors.brown[500]!,
    primaryVariant: Colors.brown[800]!,
    secondary: Colors.blueGrey[600]!,
    secondaryVariant: Colors.indigoAccent[400]!,
    surface: Colors.lime[100]!,
    background: Colors.lime[100]!,
    error: Colors.red[900]!,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black87,
    onBackground: Colors.black87,
    onError: Colors.white,
    brightness: Brightness.light,
  );
  return base;
}

ColorScheme terreDeFanghColorsDark() {
  final ColorScheme base = ColorScheme(
    primary: Colors.brown[500]!,
    primaryVariant: Colors.brown[800]!,
    secondary: Colors.blueGrey[600]!,
    secondaryVariant: Colors.indigoAccent[400]!,
    surface: Colors.grey[900]!,
    background: Colors.grey[900]!,
    error: Colors.red[900]!,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.white,
    brightness: Brightness.dark,
  );
  return base;
}
