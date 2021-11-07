import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import 'package:game_master_naheulbeuk/src/blocs/create_character.bloc.dart';

import 'package:game_master_naheulbeuk/src/ui/pages/create_character_steps/step_roll_statistics.dart';

part 'package:game_master_naheulbeuk/src/ui/pages/create_character_steps/stepper.dart';

formBlocListener(context) {
  return FormBlocListener<CreateCharacterBloc, String, String>(
    onSubmitting: (context, state) => print('submit'),
    onSuccess: (context, state) {
      if (state.stepCompleted == state.lastStep) {
        print('success');
      }
    },
    onFailure: (context, state) {
      print('failure');
    },
    child: _stepper(context),
  );
}
