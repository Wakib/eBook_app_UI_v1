import 'package:ebook_app_ui_v1/components/best_of_the_day_card.dart';
import 'package:ebook_app_ui_v1/components/reading_list_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
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
                      pressDetails: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailsScreen();
                            },
                          ),
                        );
                      },
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontSize: 26),
                    children: [
                      TextSpan(
                        text: 'Best of the ',
                      ),
                      TextSpan(
                        text: 'day',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BestOfTheDayCard(size: size),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontSize: 26),
                    children: [
                      TextSpan(
                        text: 'Continue ',
                      ),
                      TextSpan(
                        text: 'reading...',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.fromLTRB(24, 0, 24, 24),
                height: 80,
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 30, right: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Crushing & Influence',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Gary Venchuk',
                                      style: TextStyle(
                                        color: kLightBlackColor,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        'Chapter 7 of 10',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: kLightBlackColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                              Image.asset(
                                'assets/book-1.png',
                                width: 55,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 7,
                        width: size.width * .65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: kProgressIndicatorColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
