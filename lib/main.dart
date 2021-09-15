import 'package:barista/constant.dart';
import 'package:barista/screens/login/login_screen.dart';
import 'package:barista/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        fontFamily: kFontFamily,
        primaryColor: Colors.black,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: kFontFamily,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: kFontFamily,
          ),
          headline5: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: kFontFamily,
          ),
          button: TextStyle(
            color: kButtonTextColor,
            fontSize: 24,
            fontFamily: kFontFamily,
          ),
        ),
        appBarTheme: AppBarTheme(
          color: kButtonTextColor,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      home: WelcomeScreen(),
      routes: {
        WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
      },
    );
  }
}
