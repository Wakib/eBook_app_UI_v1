import 'package:flutter/material.dart';
import '../constant.dart';

class ChapterCard extends StatelessWidget {
  final String chapterTitle;
  final String subTitle;
  final VoidCallback onPress;

  ChapterCard(
      {required this.chapterTitle,
      required this.subTitle,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: kShadowColor,
            offset: const Offset(0, 15),
            blurRadius: 30.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chapterTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                ),
              ),
              SizedBox(height: 5),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 12,
                  color: kLightBlackColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.all(0.0),
            width: 24,
            child: IconButton(
              onPressed: onPress,
              icon: Icon(
                Icons.navigate_next,
                color: kLightBlackColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
