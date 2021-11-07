import 'package:flutter/material.dart';

import 'package:game_master_naheulbeuk/src/ui/responsive/device.dart';
import 'package:game_master_naheulbeuk/src/ui/base/base_android_handset.dart';
import 'package:game_master_naheulbeuk/src/ui/base/bottom_home_navigation.dart';
import 'package:game_master_naheulbeuk/src/ui/base/bottom_home_android.dart';
import 'package:game_master_naheulbeuk/src/ui/home_equip_spec_android.dart';

class HomeEquipSpecPage extends StatelessWidget {
  _content(context) {
    final Device device = Device();
    switch (device.device(context)) {
      case Devices.web:
      // TODO: Handle this case.
        break;
      case Devices.androidHandset:
        return HomeEquipSpecAndroid();
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
    }
  }

  _homeBase(context) {
    final Device device = Device();
    switch (device.device(context)) {
      case Devices.web:
      // TODO: Handle this case.
        break;
      case Devices.androidHandset:
        return BaseAndroid(_content(context), null, true,
            bottomJobEquipmentAndroid(context), bottomHomeNavigation(2, context));
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
    }
  }

  @override
  Widget build(BuildContext context) {
    final Device device = Device();
    switch (device.device(context)) {
      case Devices.web:
        return _homeBase(context);
      case Devices.androidHandset:
        return DefaultTabController(length: 3, child: _homeBase(context));
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
    }
    return Scaffold();
  }
}
