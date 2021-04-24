import 'package:bh2_boletos/widgets/button_widget.dart';
import 'package:bh2_boletos/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:flutter_svg/svg.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/email.svg',
              height: 60,
              fit: BoxFit.contain,
            ),
            Container(
              width: 240,
              child: Text(
                'Não se preocupe, digite o email cadastrado'
                ' e nós enviaremos uma nova senha para você!',
                style: kTextBody.copyWith(color: kColorGray200),
              ),
            )
          ],
        ),
        SizedBox(height: 24),
        customTextField(
          autoFocus: true,
          lableText: 'E-mail',
          onChanged: (value) {
            print(value);
          },
        ),
        ButtonWidget(buttonLabel: 'ENVIAR', onPressed: () {})
      ],
    );
  }
}
