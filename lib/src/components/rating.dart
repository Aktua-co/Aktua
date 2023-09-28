// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
 class RatingWidget extends StatelessWidget {
  final int rating;
   RatingWidget({required this.rating});
   @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 80,
        maxHeight: 80,
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 40,
            ),
            SizedBox(height: 4),
            Text(
              rating.toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}