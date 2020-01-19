import 'package:flutter/material.dart';
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

  var questionList = ["What is your favourite player?","What is your favourite actor?"];

  void answerQuestions()
  {
    setState(() {
      questionIndex = questionIndex +1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
                questionList[questionIndex]),
            Answer(answerQuestions),
            Answer(answerQuestions),
            Answer(answerQuestions)
          ],
        ),
      )
    );
  }
}