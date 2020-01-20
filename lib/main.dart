import 'package:flutter/material.dart';
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';
import 'question.dart';
import 'answer.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>
{
  var questionIndex = 0;
  var totalScore = 0;

  final questionList = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite player?',
      'answers': [
        {'text': 'Messi', 'score': 10},
        {'text': 'Ronaldinho', 'score': 9},
        {'text': 'Zidane', 'score': 8},
        {'text': 'Xavi', 'score': 7},
      ],
    },
  ];

  void answerQuestions(int score)
  {
    totalScore+=score;
    setState(() {
      questionIndex = questionIndex+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("First App"),
            ),
            body: questionIndex<questionList.length ? Quiz(questions: questionList,answerQuestion: answerQuestions,questionIndex: questionIndex)

                : Result(totalScore)
        )
    );
  }
}