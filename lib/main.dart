import 'package:ebook_app_ui_v1/constant.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eBook',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline2: TextStyle(
            color: kBlackColor,
          ),
          headline4: TextStyle(
            color: kLightBlackColor,
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
