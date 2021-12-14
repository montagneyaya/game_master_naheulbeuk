import 'package:flutter/material.dart';
import 'package:game_master_naheulbeuk/src/ui/instances/drawer/drawer.dart';

Widget buildNavigation(BuildContext context) {
  return Drawer(
    child: menuApp(context),
  );
}
