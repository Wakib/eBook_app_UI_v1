import 'package:flutter/material.dart';
import '../constant.dart';

class BookRating extends StatelessWidget {
  final double score;

  BookRating({required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
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
            size: 16,
            color: kIconColor,
          ),
          SizedBox(height: 5),
          Text(
            '$score',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
