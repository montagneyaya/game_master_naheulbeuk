part of 'package:game_master_naheulbeuk/src/blocs/create_character.listener.dart';

_stepper(context) {
  return StepperFormBlocBuilder<CreateCharacterBloc>(
    //formBloc: context.read<CreateCharacterBloc>(),
    physics: ClampingScrollPhysics(),
    stepsBuilder: (formBloc) {
      return [
        accountStep(formBloc!),
        personalStep(formBloc),
        socialStep(formBloc),
      ];
    },
  );
}