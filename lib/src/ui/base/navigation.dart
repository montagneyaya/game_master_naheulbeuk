import 'package:flutter/material.dart';

import 'package:game_master_naheulbeuk/src/ui/base/menu.dart';

Widget buildNavigation(context) {
  return Drawer(
    child: menuApp(context),
  );
}
