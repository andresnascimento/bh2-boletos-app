import 'package:bh2_boletos/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLoginTextButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 110,
              height: 1,
              color: kColorGray50,
            ),
            Text('ou entre com:', style: TextStyle(color: kColorGray200)),
            Container(
              width: 110,
              height: 1,
              color: kColorGray50,
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/google-icon.svg',
                    fit: BoxFit.contain,
                    height: 16,
                  ),
                  SizedBox(width: 8),
                  Text('Google', style: kTextBody)
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/facebook-icon.svg',
                    fit: BoxFit.contain,
                    height: 16,
                  ),
                  SizedBox(width: 8),
                  Text('Facebook', style: kTextBody)
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
