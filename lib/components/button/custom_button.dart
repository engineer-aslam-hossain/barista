import 'package:barista/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPress;
  final String buttonText;

  CustomButton({
    required this.onPress,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
        onPressed: () {
          onPress();
        },
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 24,
            fontFamily: kFontFamily,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: kButtonBgColor,
          primary: kButtonTextColor,
          minimumSize: Size(double.infinity, 40),
        ),
      ),
    );
  }
}
