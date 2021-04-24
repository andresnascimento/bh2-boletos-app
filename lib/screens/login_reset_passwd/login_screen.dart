import 'package:bh2_boletos/screens/dashboard/dashboard_screen.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:bh2_boletos/widgets/button_widget.dart';
import 'package:bh2_boletos/widgets/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'local_widgets/reset_password.dart';
import 'local_widgets/social_login_text_buttons.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      children: <Widget>[
        Container(
          child: TextField(
            // autofocus: true,
            decoration: InputDecoration(
              labelText: 'E-mail',
              border: OutlineInputBorder(),
            ),
            onChanged: (newText) {},
          ),
        ),
        SizedBox(height: 24),
        Container(
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Senha',
              border: OutlineInputBorder(),
            ),
            onChanged: (newText) {},
          ),
        ),
        ButtonWidget(
          buttonLabel: 'ENTRAR',
          onPressed: () {
            Navigator.pushNamed(context, DashboardPage.id);
          },
        ),
        Container(
          height: 60,
          child: TextButton(
            onPressed: () {
              buildShowModalBottomSheet(context, (context) => ResetPassword());
            },
            child: Text(
              'Esqueci a senha',
              style: kTextBody.copyWith(
                  fontStyle: FontStyle.italic, color: kColorGray300),
            ),
          ),
        ),
        SocialLoginTextButtons(),
      ],
    );
  }
}
