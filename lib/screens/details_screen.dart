import 'package:ebook_app_ui_v1/components/also_like_card.dart';
import 'package:ebook_app_ui_v1/components/book_info.dart';
import 'package:ebook_app_ui_v1/components/chapter_card.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: size.height * .07),
                  height: size.height * .43,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/bg.png'),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: BookInfo(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .43 - 30),
                  child: Column(
                    children: [
                      ChapterCard(
                        chapterTitle: 'Chapter 1 : Money',
                        subTitle: 'Lorem ipsum dolor',
                        onPress: () {},
                      ),
                      ChapterCard(
                        chapterTitle: 'Chapter 2 : Power',
                        subTitle: 'Lorem ipsum dolor',
                        onPress: () {},
                      ),
                      ChapterCard(
                        chapterTitle: 'Chapter 3 : Influence',
                        subTitle: 'Lorem ipsum dolor',
                        onPress: () {},
                      ),
                      ChapterCard(
                        chapterTitle: 'Chapter 4 : Win',
                        subTitle: 'Lorem ipsum dolor',
                        onPress: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 39, right: 39),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(fontSize: 24),
                      children: [
                        TextSpan(
                          text: 'You might also ',
                        ),
                        TextSpan(
                          text: 'like...',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  AlsoLikeCard(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
