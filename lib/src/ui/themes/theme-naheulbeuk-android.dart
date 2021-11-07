import 'package:flutter/material.dart';

import 'package:game_master_naheulbeuk/src/ui/themes/opacity.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/colors.dart';

ThemeData terreDeFanghTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    appBarTheme: terreDeFanghAppBar(),
    bottomNavigationBarTheme: terreDeFanghBottomNav(),
    textTheme: terreDeFanghText(),
    colorScheme: terreDeFanghColors(),
  );
}

ColorScheme terreDeFanghColors() {
  final ColorScheme base = ColorScheme(
      primary: kBrown500,
      primaryVariant: kBrown800,
      secondary: kBlueGrey600,
      secondaryVariant: kIndigoA400,
      surface: kDark,
      background: kDark,
      error: kRed,
      onPrimary: kBlueGrey600,
      onSecondary: kBrown500,
      onSurface: kCream,
      onBackground: kCream,
      onError: kIndigoA400,
      brightness: Brightness.dark,
  );
  return base;
}

AppBarTheme terreDeFanghAppBar() {
  final AppBarTheme base = AppBarTheme(
    backgroundColor: terreDeFanghColors().primary,
    titleTextStyle: terreDeFanghText().headline5!
        .apply(color: Colors.white.withOpacity(kOpacityHigh)),
  );
  return base;
}

BottomNavigationBarThemeData terreDeFanghBottomNav() {
  final BottomNavigationBarThemeData base = BottomNavigationBarThemeData(
    selectedItemColor: terreDeFanghColors().secondary,
    unselectedItemColor: Colors.white.withOpacity(kOpacityXLow),
  );
  return base;
}

TextTheme terreDeFanghText() {
  final TextTheme base = ThemeData().textTheme;
  return base.copyWith(
    headline1: base.headline1!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 64.0,
      height: 1.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.0,
      color: Colors.white.withOpacity(kOpacityHigh),
    ),
    headline2: base.headline2!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 40.0,
      height: 1.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.336,
      color: Colors.white.withOpacity(kOpacityHigh),
    ),
    headline3: base.headline3!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 32.0,
      height: 1.04,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: Colors.white.withOpacity(kOpacityHigh),
    ),
    headline4: base.headline4!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 22.627,
      height: 1.179,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.16,
      color: Colors.white.withOpacity(kOpacityHigh),
    ),
    headline5: base.headline5!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 16.0,
      height: 1.333,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: Colors.white.withOpacity(kOpacityHigh),
    ),
    headline6: base.headline6!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 13.328,
      height: 1.6,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.16,
      color: Colors.white.withOpacity(kOpacityHigh),
    ),
    subtitle1: base.subtitle1!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 10.672,
      height: 1.75,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.096,
      color: Colors.white.withOpacity(kOpacityMedium),
    ),
    subtitle2: base.subtitle2!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 9.328,
      height: 1.573,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.064,
      color: Colors.white.withOpacity(kOpacityMedium),
    ),
    bodyText2: base.bodyText2!.copyWith(
      fontFamily: 'dauphinn',
      fontSize: 18.0,
      height: 1.5,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.56,
      color: Colors.white.withOpacity(kOpacityHigh),
    ),
    bodyText1: base.bodyText1!.copyWith(
      fontFamily: 'dauphinn',
      fontSize: 15.744,
      height: 1.429,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.288,
      color: Colors.white.withOpacity(kOpacityHigh),
    ),
    button: base.button!.copyWith(
      fontFamily: 'benguiab',
      fontSize: 12.0,
      height: 2.572,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.072,
      color: Colors.white.withOpacity(kOpacityHigh),
    ),
    caption: base.caption!.copyWith(
      fontFamily: 'dauphinn',
      fontSize: 13.504,
      height: 1.666,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.448,
      color: Colors.white.withOpacity(kOpacityMedium),
    ),
  );
}
