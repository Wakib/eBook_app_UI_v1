import 'package:flutter/material.dart';
import '../constant.dart';
import 'book_rating.dart';
import 'custom_button.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final double rating;
  final VoidCallback pressRead;
  final VoidCallback pressDetails;

  ReadingListCard(
      {required this.image,
      required this.title,
      required this.author,
      required this.rating,
      required this.pressDetails,
      required this.pressRead});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 250,
      width: 206,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 230,
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
            ),
          ),
          Image.asset(
            image,
            width: 140,
          ),
          Positioned(
            right: 20,
            top: 40,
            child: Column(
              children: [
                Icon(
                  Icons.favorite_border,
                  color: kLightBlackColor,
                ),
                SizedBox(height: 10),
                BookRating(score: rating),
              ],
            ),
          ),
          Positioned(
            left: 20,
            bottom: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kBlackColor,
                  ),
                ),
                Text(
                  author,
                  style: TextStyle(
                    color: kLightBlackColor,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Row(
              children: [
                GestureDetector(
                  onTap: pressDetails,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    width: 100,
                    child: Text(
                      'Details',
                      style: TextStyle(
                        color: kLightBlackColor,
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  title: 'Read',
                  onTap: pressRead,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
