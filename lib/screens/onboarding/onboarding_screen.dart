import 'package:bh2_boletos/screens/login_reset_passwd/login_screen.dart';
import 'package:bh2_boletos/screens/signup/signup_screen.dart';
import 'package:bh2_boletos/utilities/constants.dart';
import 'package:bh2_boletos/widgets/button_widget.dart';
import 'package:bh2_boletos/widgets/image_outlined_button.dart';
import 'package:bh2_boletos/widgets/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:introduction_screen/introduction_screen.dart';
import 'package:bh2_boletos/models/onboarding_content_model.dart';

class OnboardingScreen extends StatefulWidget {
  static String id = 'onboarding_screen';

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        _pageController.animateToPage(
                          contents.length - 1,
                          curve: Curves.bounceInOut,
                          duration: Duration(microseconds: 100),
                        );
                      },
                      child: Text('PULAR', style: kTextBodySM)),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                      if (currentIndex == contents.length - 1)
                        isLastPage = true;
                      else
                        isLastPage = false;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          SvgPicture.asset(
                            contents[i].image,
                            fit: BoxFit.contain,
                            height: 335,
                          ),
                          SizedBox(height: 40),
                          Text(
                            contents[i].title,
                            style: kHeaderLG,
                          ),
                          SizedBox(height: 10),
                          Text(
                            contents[i].description,
                            style: kTextBody.copyWith(color: kColorGray200),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => buildDots(index, context),
                  ),
                ),
              ),
              Container(
                height: 56,
                margin: EdgeInsets.symmetric(horizontal: 80, vertical: 8),
                width: double.infinity,
                child: isLastPage
                    ? ButtonWidget(
                        buttonLabel: 'NOVO CADASTRO',
                        onPressed: () {
                          buildShowModalBottomSheet(
                            context,
                            (context) => ListView(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 32),
                              children: <Widget>[
                                ImageOutlineButton(
                                  onTap: () {
                                    Navigator.pushNamed(context, SignUpPage.id);
                                  },
                                  buttonImage: 'assets/images/email-icon.svg',
                                  buttonLabel: 'Seu e-mail',
                                ),
                                SizedBox(height: 32),
                                ImageOutlineButton(
                                  onTap: () {},
                                  buttonImage: 'assets/images/google-icon.svg',
                                  buttonLabel: 'Google',
                                ),
                                SizedBox(height: 32),
                                ImageOutlineButton(
                                  onTap: () {},
                                  buttonImage:
                                      'assets/images/facebook-icon.svg',
                                  buttonLabel: 'Facebook',
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    : ButtonWidget(
                        bgColor: kColorBlack,
                        labelColor: Colors.white,
                        buttonLabel: 'PRÓXIMO',
                        onPressed: () {
                          _pageController.nextPage(
                              duration: Duration(microseconds: 100),
                              curve: Curves.easeOut);
                        },
                      ),
              ),
              isLastPage
                  ? Container(
                      child: TextButton(
                        onPressed: () {
                          buildShowModalBottomSheet(
                              context, (context) => LoginScreen());
                        },
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(
                              color: kColorBlack, fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  : SizedBox(height: 48)
            ],
          ),
        ),
      ),
    );
  }

  Container buildDots(int index, BuildContext context) {
    return Container(
      height: 8,
      width: currentIndex == index ? 20 : 8,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: currentIndex == index ? kColorSecondary : kColorSecondary50,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
