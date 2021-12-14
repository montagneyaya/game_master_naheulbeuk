import 'package:flutter/material.dart';
import 'package:game_master_naheulbeuk/src/ui/components/tab_bar/tab_bar.dart';
import 'package:game_master_naheulbeuk/src/ui/instances/tab_bar/tab_bar_character_sheet_android.dart';
import 'package:game_master_naheulbeuk/src/ui/responsive/device.dart';
import 'package:game_master_naheulbeuk/src/ui/components/base/base_android_handset.dart';
import 'package:game_master_naheulbeuk/src/ui/instances/bottom_nav_bar/bottom_navigation_bar_character_sheet.dart';
import 'package:game_master_naheulbeuk/src/ui/pages/character_sheet/character_sheet_equip_spec_android.dart';

class CharacterSheetEquipSpecPage extends StatelessWidget {
  Widget _content(BuildContext context) {
    final Device device = Device();
    switch (device.device(context)) {
      case Devices.web:
        // TODO: Handle this case.
        break;
      case Devices.androidHandset:
        return CharacterSheetEquipSpecAndroid();
      case Devices.iOSHandset:
        // TODO: Handle this case.
        break;
      case Devices.androidTablet:
        // TODO: Handle this case.
        break;
      case Devices.iOSTablet:
        // TODO: Handle this case.
        break;
      case Devices.windows:
        // TODO: Handle this case.
        break;
      case Devices.linux:
        // TODO: Handle this case.
        break;
      case Devices.macOS:
        // TODO: Handle this case.
        break;
      case Devices.fuchsia:
        // TODO: Handle this case.
        break;
      case null:
        return Scaffold();
    }
    return Scaffold();
  }

  Widget _characterSheetBase(BuildContext context) {
    final Device device = Device();
    switch (device.device(context)) {
      case Devices.web:
        // TODO: Handle this case.
        break;
      case Devices.androidHandset:
        return BaseAndroid(
            _content(context),
            null,
            true,
            tabBarAndroid(context, jobEquipmentTab),
            bottomHomeNavigation(2, context));
      case Devices.iOSHandset:
        // TODO: Handle this case.
        break;
      case Devices.androidTablet:
        // TODO: Handle this case.
        break;
      case Devices.iOSTablet:
        // TODO: Handle this case.
        break;
      case Devices.windows:
        // TODO: Handle this case.
        break;
      case Devices.linux:
        // TODO: Handle this case.
        break;
      case Devices.macOS:
        // TODO: Handle this case.
        break;
      case Devices.fuchsia:
        // TODO: Handle this case.
        break;
      case null:
        return Scaffold();
    }
    return Scaffold();
  }

  @override
  Widget build(BuildContext context) {
    final Device device = Device();
    switch (device.device(context)) {
      case Devices.web:
        // TODO: Handle this case.
        break;
      case Devices.androidHandset:
        return DefaultTabController(
            length: 3, child: _characterSheetBase(context));
      case Devices.iOSHandset:
        // TODO: Handle this case.
        break;
      case Devices.androidTablet:
        // TODO: Handle this case.
        break;
      case Devices.iOSTablet:
        // TODO: Handle this case.
        break;
      case Devices.windows:
        // TODO: Handle this case.
        break;
      case Devices.linux:
        // TODO: Handle this case.
        break;
      case Devices.macOS:
        // TODO: Handle this case.
        break;
      case Devices.fuchsia:
        // TODO: Handle this case.
        break;
      case null:
        return Scaffold();
    }
    return Scaffold();
  }
}
