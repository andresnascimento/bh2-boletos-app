import 'package:bh2_boletos/utilities/constants.dart';
import 'package:flutter/material.dart';

Widget customTextField(
    {String lableText,
    Function onChanged,
    var textController,
    Function validator,
    bool autoFocus = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16.0),
    child: TextFormField(
      autofocus: autoFocus,
      decoration: kInputDecoration.copyWith(labelText: lableText),
      onChanged: onChanged,
      controller: textController,
      validator: validator,
    ),
  );
}
