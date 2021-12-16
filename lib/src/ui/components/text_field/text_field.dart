import 'package:flutter/material.dart';

TextField textField(BuildContext context) {
  return TextField(
    style: Theme.of(context).textTheme.bodyText2,
    textAlignVertical: TextAlignVertical.bottom,
  );
}
