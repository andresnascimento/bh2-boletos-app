import 'package:flutter/material.dart';
import 'package:bh2_boletos/utilities/constants.dart';

class ButtonWidget extends StatelessWidget {
  final Color bgColor;
  final Color labelColor;
  final String buttonLabel;
  final Function onPressed;

  ButtonWidget({
    this.bgColor = kColorPrimary,
    this.labelColor = kColorBlack,
    @required this.buttonLabel,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 16),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 12),
          backgroundColor: bgColor,
          primary: labelColor,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(6.0)),
          textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        child: Text(buttonLabel),
      ),
    );
  }
}
