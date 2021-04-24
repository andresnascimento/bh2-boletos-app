import 'package:flutter/material.dart';

Future buildShowModalBottomSheet(
    BuildContext context, Function widgetFunction) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8.0),
        topRight: Radius.circular(8.0),
      ),
    ),
    builder: widgetFunction,
  );
}
