import 'package:flutter/material.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/opacity.dart';

BoxDecoration background(BuildContext context,
    ImageProvider<Object> backgroundImage, BoxFit backgroundFit) {
  return BoxDecoration(
    color: Theme.of(context).colorScheme.background,
    image: DecorationImage(
      colorFilter: ColorFilter.mode(
          Theme.of(context).brightness == Brightness.light
              ? Theme.of(context)
                  .colorScheme
                  .background
                  .withOpacity(lightOpacity24)
              : Theme.of(context)
                  .colorScheme
                  .background
                  .withOpacity(darkOpacity26),
          BlendMode.dstATop),
      image: backgroundImage,
      fit: backgroundFit,
    ),
  );
}
