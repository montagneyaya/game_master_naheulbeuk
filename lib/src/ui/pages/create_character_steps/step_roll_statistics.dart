import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:game_master_naheulbeuk/src/blocs/create_character.bloc.dart';

FormBlocStep accountStep(CreateCharacterBloc createCharacterBloc) {
  return FormBlocStep(
    title: Text('Account'),
    content: Column(
      children: <Widget>[
        TextFieldBlocBuilder(
          textFieldBloc: createCharacterBloc.username,
          keyboardType: TextInputType.emailAddress,
          enableOnlyWhenFormBlocCanSubmit: true,
          decoration: InputDecoration(
            labelText: 'Username',
            prefixIcon: Icon(Icons.person),
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: createCharacterBloc.email,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            prefixIcon: Icon(Icons.email),
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: createCharacterBloc.password,
          keyboardType: TextInputType.emailAddress,
          suffixButton: SuffixButton.obscureText,
          decoration: InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock),
          ),
        ),
      ],
    ),
  );
}

FormBlocStep personalStep(CreateCharacterBloc createCharacterBloc) {
  return FormBlocStep(
    title: Text('Personal'),
    content: Column(
      children: <Widget>[
        TextFieldBlocBuilder(
          textFieldBloc: createCharacterBloc.firstName,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'First Name',
            prefixIcon: Icon(Icons.person),
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: createCharacterBloc.lastName,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Last Name',
            prefixIcon: Icon(Icons.person),
          ),
        ),
        RadioButtonGroupFieldBlocBuilder<String>(
          selectFieldBloc: createCharacterBloc.gender,
          itemBuilder: (context, value) => value,
          decoration: InputDecoration(
            labelText: 'Gender',
            prefixIcon: SizedBox(),
          ),
        ),
      ],
    ),
  );
}

FormBlocStep socialStep(CreateCharacterBloc createCharacterBloc) {
  return FormBlocStep(
    title: Text('Social'),
    content: Column(
      children: <Widget>[
        TextFieldBlocBuilder(
          textFieldBloc: createCharacterBloc.github,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Github',
            prefixIcon: Icon(Icons.sentiment_satisfied),
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: createCharacterBloc.twitter,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Twitter',
            prefixIcon: Icon(Icons.sentiment_satisfied),
          ),
        ),
        TextFieldBlocBuilder(
          textFieldBloc: createCharacterBloc.facebook,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Facebook',
            prefixIcon: Icon(Icons.sentiment_satisfied),
          ),
        ),
      ],
    ),
  );
}
