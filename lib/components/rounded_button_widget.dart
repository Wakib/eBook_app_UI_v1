import 'package:flutter/material.dart';
import '../constant.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final double verticalPadding;
  final double horizontalPadding;
  final double fontSize;
  final VoidCallback press;

  RoundedButton(
      {required this.title,
      this.verticalPadding = 15,
      this.horizontalPadding = 60,
      this.fontSize = 16,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              offset: const Offset(0, 15),
              blurRadius: 30.0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
