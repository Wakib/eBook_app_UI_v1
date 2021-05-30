import 'package:ebook_app_ui_v1/components/reading_list_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/main_page_bg.png'),
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * .1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline4,
                  children: [
                    TextSpan(
                      text: 'What are you \nreading',
                    ),
                    TextSpan(
                      text: ' today?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReadingListCard(
                    image: 'assets/book-1.png',
                    title: 'Crushing & Influence',
                    author: 'Gary Venchuk',
                    rating: 4.5,
                    pressDetails: () {},
                    pressRead: () {},
                  ),
                  ReadingListCard(
                    image: 'assets/book-2.png',
                    title: 'Top Ten Business Hacks',
                    author: 'Herman Joel',
                    rating: 4.1,
                    pressDetails: () {},
                    pressRead: () {},
                  ),
                  ReadingListCard(
                    image: 'assets/book-3.png',
                    title: 'How To Win Friends',
                    author: 'Herman Joel',
                    rating: 4.0,
                    pressDetails: () {},
                    pressRead: () {},
                  ),
                  SizedBox(width: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
