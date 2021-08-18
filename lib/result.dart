import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPharse {
    String resultText ;
    if (resultScore <= 8) {
      resultText = 'You are great and awesome';
    } else if (resultScore <= 12) {
      resultText = 'you are fine ';
    } else if (resultScore <= 16) {
      resultText = 'you are BORING';
    } else {
      resultText = 'You are the worst !!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPharse,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
