import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

//consturctor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // conatainer 04:03:30
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
