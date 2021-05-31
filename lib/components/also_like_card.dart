import 'package:ebook_app_ui_v1/components/rounded_button_widget.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import 'book_rating.dart';

class AlsoLikeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              height: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kLightBlackColor.withOpacity(.15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'How To Win \nFriends & Influence',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Gary Venchuk',
                  style: TextStyle(
                    fontSize: 12,
                    color: kLightBlackColor,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    BookRating(score: 4.5),
                    SizedBox(width: 15),
                    RoundedButton(
                      title: 'Read',
                      verticalPadding: 8,
                      horizontalPadding: 50,
                      fontSize: 12,
                      press: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              'assets/book-1.png',
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
