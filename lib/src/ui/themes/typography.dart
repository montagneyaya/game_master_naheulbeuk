import 'package:flutter/material.dart';

TextTheme terreDeFanghText() {
  final TextTheme base = ThemeData().textTheme;
  return base.copyWith(
    headline1: base.headline1!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 72.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -8.0,
      color: Colors.black87,
    ),
    headline2: base.headline2!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 45.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -4.5,
      color: Colors.black87,
    ),
    headline3: base.headline3!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 36.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -2.5,
      color: Colors.black87,
    ),
    headline4: base.headline4!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 25.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.1,
      color: Colors.black87,
    ),
    headline5: base.headline5!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 18.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.2,
      color: Colors.black87,
    ),
    headline6: base.headline6!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 15.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.8,
      color: Colors.black87,
    ),
    subtitle1: base.subtitle1!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 12.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.8,
      color: Colors.black87,
    ),
    subtitle2: base.subtitle2!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 10.5,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.6,
      color: Colors.black87,
    ),
    bodyText2: base.bodyText2!.copyWith(
      fontFamily: 'dauphinn',
      fontSize: 18.0,
      height: 1.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.8,
      color: Colors.black87,
    ),
    bodyText1: base.bodyText1!.copyWith(
      fontFamily: 'dauphinn',
      fontSize: 16.0,
      height: 1.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.4,
      color: Colors.black87,
    ),
    button: base.button!.copyWith(
      fontFamily: 'benguiab',
      fontSize: 15.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.4,
      color: Colors.black87,
    ),
    caption: base.caption!.copyWith(
      fontFamily: 'dauphinn',
      fontSize: 13.0,
      height: 1.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.9,
      color: Colors.black87,
    ),
    overline: base.overline!.copyWith(
      fontFamily: 'benguiab',
      fontSize: 11.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.1,
      color: Colors.black87,
    ),
  );
}

TextTheme terreDeFanghTextDark() {
  final TextTheme base = ThemeData().textTheme;
  return base.copyWith(
    headline1: base.headline1!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 72.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -8.0,
      color: Colors.white,
    ),
    headline2: base.headline2!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 45.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -4.5,
      color: Colors.white,
    ),
    headline3: base.headline3!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 36.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -2.5,
      color: Colors.white,
    ),
    headline4: base.headline4!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 25.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.1,
      color: Colors.white,
    ),
    headline5: base.headline5!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 18.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.2,
      color: Colors.white,
    ),
    headline6: base.headline6!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 15.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.8,
      color: Colors.white,
    ),
    subtitle1: base.subtitle1!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 12.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.8,
      color: Colors.white,
    ),
    subtitle2: base.subtitle2!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 10.5,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.6,
      color: Colors.white,
    ),
    bodyText2: base.bodyText2!.copyWith(
      fontFamily: 'dauphinn',
      fontSize: 18.0,
      height: 1.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.8,
      color: Colors.white,
    ),
    bodyText1: base.bodyText1!.copyWith(
      fontFamily: 'dauphinn',
      fontSize: 16.0,
      height: 1.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.4,
      color: Colors.white,
    ),
    button: base.button!.copyWith(
      fontFamily: 'benguiab',
      fontSize: 15.0,
      height: 1.0,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.4,
      color: Colors.white,
    ),
    caption: base.caption!.copyWith(
      fontFamily: 'dauphinn',
      fontSize: 13.0,
      height: 1.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.9,
      color: Colors.white,
    ),
    overline: base.overline!.copyWith(
      fontFamily: 'benguiab',
      fontSize: 11.0,
      height: 1.0, 
      fontWeight: FontWeight.bold,
      letterSpacing: -0.1,
      color: Colors.white,
    ),
  );
}
