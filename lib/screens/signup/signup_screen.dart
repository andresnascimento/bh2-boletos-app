import 'package:bh2_boletos/screens/login_reset_passwd/local_widgets/social_login_text_buttons.dart';
import 'package:flutter/material.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:bh2_boletos/widgets/button_widget.dart';
import 'package:bh2_boletos/widgets/text_field.dart';
import 'package:flutter_svg/svg.dart';

//TODO implement validation and error handling for all the inputs

class SignUpPage extends StatelessWidget {
  static String id = 'signUp_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
          color: kColorBlack,
        ),
        title: Image(image: AssetImage('assets/images/logo.png')),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SvgPicture.asset('assets/images/novo-cadastro.svg'),
          customTextField(lableText: 'Nome', autoFocus: true),
          customTextField(lableText: 'E-mail'),
          //TODO implement the hide/show password
          customTextField(lableText: 'Senha'),
          customTextField(lableText: 'Confirmar senha'),
          ButtonWidget(
            buttonLabel: 'CADASTRAR',
            bgColor: kColorSuccess,
            labelColor: Colors.white,
            onPressed: () {},
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'CANCELAR',
              style: kTextBody.copyWith(color: kColorGray300),
            ),
          ),
          SizedBox(height: 32),
          SocialLoginTextButtons()
        ],
      ),
    );
  }
}
