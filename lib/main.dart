import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

//diff between stateless and stateful on 03:29:00
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //_ means private
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 6},
        {'text': 'White', 'score': 4},
        {'text': 'Blue', 'score': 2},
        {'text': 'Yellow', 'score': 1}
      ],
    },
    {
      'questionText': 'what\'s your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 8},
        {'text': 'Bear', 'score': 6},
        {'text': 'Elephant', 'score': 4},
        {'text': 'Tiger', 'score': 2},
        {'text': 'Lion', 'score': 1}
      ],
    },
    {
      'questionText': 'where\'s your favorite place?',
      'answers': [
        {'text': 'Mall', 'score': 10},
        {'text': 'Gym', 'score': 8},
        {'text': 'School', 'score': 6},
        {'text': 'Home', 'score': 4},
        {'text': 'Friends', 'score': 1},
        {'text': 'Beach', 'score': 2}
      ],
    },
    {
      'questionText': 'what\'s your favorite series/Movie?',
      'answers': [
        {'text': 'Big momma', 'score': 10},
        {'text': 'Sparta', 'score': 8},
        {'text': 'How i met your mother', 'score': 6},
        {'text': 'Peaky blinders', 'score': 4},
        {'text': 'Friends', 'score': 1},
        {'text': 'Game of throness', 'score': 2}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

//set the question number and answers
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  //need to understand the widget-build
  Widget build(BuildContext context) {
    //Map - Key:Value
    //MaterialApp ?
    //scaffold ?
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore),
      ),
    );
  }
}
