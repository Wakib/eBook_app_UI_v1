import 'package:flutter/material.dart';
import '../constant.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double radius;
  final VoidCallback onTap;

  CustomButton({required this.title, this.radius = 30, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 106,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(radius),
          ),
          color: kBlackColor,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
