import 'package:barista/components/button/custom_button.dart';
import 'package:barista/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Image.asset('assets/images/welcome_coffee.png'),
              Spacer(),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 120,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Welcome to Barista App',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomButton(
                onPress: () =>
                    Navigator.pushNamed(context, LoginScreen.routeName),
                buttonText: 'Login/Registration',
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
