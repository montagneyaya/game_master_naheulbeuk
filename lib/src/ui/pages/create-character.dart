import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import 'package:game_master_naheulbeuk/src/blocs/create_character.bloc.dart';
import 'package:game_master_naheulbeuk/src/blocs/create_character.listener.dart';

import 'package:game_master_naheulbeuk/src/ui/responsive/device.dart';
import 'package:game_master_naheulbeuk/src/ui/background/background_web.dart';
import 'package:game_master_naheulbeuk/src/ui/components/base_web.dart';
import 'package:game_master_naheulbeuk/src/ui/background/background_create_character.dart';
import 'package:game_master_naheulbeuk/src/ui/components/base_android_handset.dart';

class CreateCharacterPage extends StatefulWidget {
  @override
  _CreateCharacterPageState createState() => _CreateCharacterPageState();
}

class _CreateCharacterPageState extends State<CreateCharacterPage> {
  _content(context) {
    return Column(
      children: <Widget>[
        Text('Création de personnage',
            style: Theme.of(context).textTheme.headline2),
        formBlocListener(context),
      ],
    );
  }

  _homeBase(context) {
    Device device = Device();
    switch (device.device(context)) {
      case Devices.web:
        return BaseWeb(_content(context), backgroundWeb);
      case Devices.androidHandset:
        return BaseAndroid(
            _content(context), backgroundCreateCharacter, false, null, null);
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
    return BlocProvider(
      create: (context) => CreateCharacterBloc(),
      child: Builder(
        builder: (context) {
          return _homeBase(context);
        },
      ),
    );
  }
}
