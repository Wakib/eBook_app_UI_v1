import 'package:flutter/material.dart';

import '../constant.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback press;

  RoundedButton({required this.title, required this.press});

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
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
