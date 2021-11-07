import 'package:flutter/material.dart';

TextField textField(context) {
  return TextField(
    style: Theme.of(context).textTheme.bodyText2,
    textAlignVertical: TextAlignVertical.bottom,
  );
}
