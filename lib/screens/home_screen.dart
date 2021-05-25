import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

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
            Container(
              margin: EdgeInsets.only(left: 24),
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
                    'assets/book-1.png',
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
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: kShadowColor,
                                offset: const Offset(0, 3),
                                blurRadius: 15.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.star,
                                color: kIconColor,
                              ),
                              Text(
                                '4.5',
                                style: Theme.of(context).textTheme.button,
                              ),
                            ],
                          ),
                        ),
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
                          'Crushing & Influence',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kBlackColor,
                          ),
                        ),
                        Text(
                          'Gary Venchuk',
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
                        Container(
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          width: 103,
                          child: Text(
                            'Details',
                            style: TextStyle(
                              color: kLightBlackColor,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          width: 103,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(30),
                            ),
                            color: kBlackColor,
                          ),
                          child: Text(
                            'Read',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
