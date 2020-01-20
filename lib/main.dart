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

  var questionList = [
    {'questionText':'What is your favourite player?',
      'answer':[
  {'text':'Messi','score':10},
  {'text:':'Ronaldinho','score':9},
  {'text':"Zidan",'score':8},],},
    {'questionText':'What is your favourite actor?',
    'answer':[
    {'text':'Kareem','score':10},
    {'text:':'Henedy','score':9},
    {'text':"Elsaqa",'score':8},],}];

  void answerQuestions(int score)
  {
    totalScore = totalScore+score;

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

            : Result()
      )
    );
  }
}