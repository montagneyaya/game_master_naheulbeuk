import 'package:flutter/material.dart';

import 'package:game_master_naheulbeuk/src/ui/themes/theme-naheulbeuk-android.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/colors.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/opacity.dart';

ThemeData terreDeFanghWebTheme() {
  final ThemeData base = terreDeFanghTheme();
  return base.copyWith(
    scaffoldBackgroundColor: kCream,
    textTheme: terreDeFanghWebText(),
  );
}

TextTheme terreDeFanghWebText() {
  final TextTheme base = terreDeFanghText();
  return base.copyWith(
    headline1: base.headline1!.copyWith(
      color: Colors.black.withOpacity(kOpacityHigh),
    ),
    headline2: base.headline2!.copyWith(
      color: Colors.black.withOpacity(kOpacityHigh),
    ),
    headline3: base.headline3!.copyWith(
      color: Colors.black.withOpacity(kOpacityHigh),
    ),
    headline4: base.headline4!.copyWith(
      color: Colors.black.withOpacity(kOpacityHigh),
    ),
    headline5: base.headline5!.copyWith(
      color: Colors.black.withOpacity(kOpacityHigh),
    ),
    headline6: base.headline6!.copyWith(
      color: Colors.black.withOpacity(kOpacityHigh),
    ),
    subtitle1: base.subtitle1!.copyWith(
      color: Colors.black.withOpacity(kOpacityMedium),
    ),
    subtitle2: base.subtitle2!.copyWith(
      color: Colors.black.withOpacity(kOpacityMedium),
    ),
    bodyText2: base.bodyText2!.copyWith(
      color: Colors.black.withOpacity(kOpacityHigh),
    ),
    bodyText1: base.bodyText1!.copyWith(
      color: Colors.black.withOpacity(kOpacityHigh),
    ),
    button: base.button!.copyWith(
      color: Colors.black.withOpacity(kOpacityHigh),
    ),
    caption: base.caption!.copyWith(
      color: Colors.black.withOpacity(kOpacityMedium),
    ),
  );
}
