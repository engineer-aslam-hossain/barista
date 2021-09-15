import 'package:barista/components/button/custom_button.dart';
import 'package:barista/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/arrow_back.svg'),
        ),
        actions: [],
      ),
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Log in with your email',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: kInputDecoration.copyWith(
                      hintText: 'example@selise.ch',
                      suffixIconConstraints: BoxConstraints(maxWidth: 48),
                      suffixIcon: SvgPicture.asset(
                        'assets/icons/mail.svg',
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: true,
                    autofillHints: [AutofillHints.email],
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextFormField(
                    decoration: kInputDecoration.copyWith(
                      hintText: 'Password',
                      suffixIconConstraints: BoxConstraints(maxWidth: 48),
                      suffixIcon: SvgPicture.asset(
                        'assets/icons/eye_off.svg',
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'I forgot my password',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: kFontFamily,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 0,
                      ),
                    ),
                  ),
                ],
              )),
            ),
            Spacer(),
            CustomButton(onPress: () {}, buttonText: 'Login'),
          ],
        )),
      ),
    );
  }
}
