import 'package:flutter/material.dart';

import 'package:game_master_naheulbeuk/src/ui/themes/colors.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/opacity.dart';

BoxDecoration backgroundBackpack = BoxDecoration(
  image: DecorationImage(
    colorFilter: ColorFilter.mode(
        kDark.withOpacity(kOpacityLow - 0.12), BlendMode.dstATop),
    image: AssetImage('assets/images/mobile/background_backpack.webp'),
    fit: BoxFit.contain,
  ),
);
