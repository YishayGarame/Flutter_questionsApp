import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
void main()
{
  runApp(MyApp());
}

//diff between stateless and stateful on 03:29:00
class MyApp extends StatefulWidget  {

 @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //_... means private
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;


//what make it stop at 2
  void _answerQuestion(){
    setState(() {
    _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  //need to understand the widget-build
  Widget build(BuildContext context){
    //Map - Key:Value
    const questions = [   
      {
        'questionText': 'what\'s your favorite color ?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'what\'s your favorite animal ?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'where\'s your favorite place?',
        'answers': ['Beach', 'Mall', 'Gym', 'Home'],
      },
    ];
    
    //MaterialApp ?  
    //scaffold ?
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text('My first App'),
        ),
      body: Column(
        children:[
          Question(  // understand the line underneath
            questions[_questionIndex]['questionText']?.toString() ?? '',
          ),
           // the ... pull all the values of the list and add it individually in the surrounding list  
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer );
            }).toList()
          ],
        )
      ),
    );
  }
}

