import 'package:flutter/material.dart';

import 'package:game_master_naheulbeuk/src/ui/responsive/device.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/colors.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/opacity.dart';

Widget menuApp(context) {
  final textTheme = Theme.of(context).textTheme;
  final Device device = Device();
  return Container(
    color: device.device(context) == Devices.web ? kCream : null,
    child: ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.home_outlined,
            color: device.device(context) == Devices.web
                ? Colors.black.withOpacity(kOpacityHigh)
                : Colors.white.withOpacity(kOpacityHigh),
          ),
          title: Text('Accueil', style: textTheme.bodyText2),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        ListTile(
          leading: Icon(
            Icons.person_add_outlined,
            color: device.device(context) == Devices.web
                ? Colors.black.withOpacity(kOpacityHigh)
                : Colors.white.withOpacity(kOpacityHigh),
          ),
          title: Text('Creation de personnage', style: textTheme.bodyText2),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/create-character');
          },
        ),
      ],
    ),
  );
}
