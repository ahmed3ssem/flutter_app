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

  var questionList = [
    {'questionText':'What is your favourite player?',
      'answer':['Messi','Ronaldinho',"Zidan"]},
    {'questionText':'What is your favourite actor?',
      'answer':['Elsaqa','Henedy',"Kareem"]}
    ];

  void answerQuestions()
  {
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
        body: questionIndex<questionList.length ? Column(
          children: <Widget>[
            Question(
                questionList[questionIndex]['questionText']),
            ...(questionList[questionIndex]['answer'] as List<String>).map((answer){
              return Answer(answerQuestions,answer);
            }).toList()
          ],
        ): Center(
          child: Text("Messi♥"),
        ),
      )
    );
  }
}