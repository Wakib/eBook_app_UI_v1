import 'package:flutter/material.dart';
import '../constant.dart';
import 'book_rating.dart';
import 'custom_button.dart';

class BestOfTheDayCard extends StatelessWidget {
  final Size size;

  BestOfTheDayCard({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      height: 205,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding:
                  EdgeInsets.only(left: 24, top: 24, right: size.width * .35),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kLightBlackColor.withOpacity(.2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'How To Win Friends & Influence',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                  Text(
                    'Herman Joel',
                    style: TextStyle(
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      BookRating(score: 4.1),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi gravida nulla risus lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi gravida nulla risus.',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              'assets/book-2.png',
              width: size.width * .37,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: CustomButton(
                title: 'Read',
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
