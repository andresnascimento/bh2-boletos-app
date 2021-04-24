import 'package:bh2_boletos/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageOutlineButton extends StatelessWidget {
  final String buttonLabel;
  final String buttonImage;
  final Function onTap;

  ImageOutlineButton({
    @required this.buttonLabel,
    @required this.buttonImage,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: kColorBlack,
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              buttonImage,
              fit: BoxFit.contain,
              height: 20,
            ),
            SizedBox(width: 8),
            Text(
              buttonLabel,
              style: kTextBody.copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
