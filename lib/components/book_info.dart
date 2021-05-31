import 'package:ebook_app_ui_v1/components/rounded_button_widget.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import 'book_rating.dart';

class BookInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Crushing &',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Influence',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet consecte adipiscing elit morbi gravida nulla risus lorem ipsum dolor sitet amet, consectetur adipiscing elit.',
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10,
                              color: kLightBlackColor,
                            ),
                          ),
                          SizedBox(height: 15),
                          RoundedButton(
                            title: 'Read',
                            verticalPadding: 8,
                            horizontalPadding: 50,
                            fontSize: 12,
                            press: () {},
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: kLightBlackColor,
                        ),
                        SizedBox(height: 10),
                        BookRating(score: 4.5),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Image.asset(
          'assets/book-1.png',
          height: 200,
        ),
      ],
    );
  }
}
