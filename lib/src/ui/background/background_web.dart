import 'package:flutter/material.dart';

import 'package:game_master_naheulbeuk/src/ui/themes/colors.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/opacity.dart';

BoxDecoration backgroundWeb = BoxDecoration(
  image: DecorationImage(
    colorFilter: ColorFilter.mode(
        kCream.withOpacity(kOpacityLow - 0.12), BlendMode.dstATop),
    image: AssetImage('assets/images/web/background.webp'),
    fit: BoxFit.cover,
  ),
);
