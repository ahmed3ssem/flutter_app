import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{

  void answerQuestions()
  {
    print("Messi");
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
            Text("Messi"),
            RaisedButton(
              child: Text("Click Me"),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text("Click Me"),
              onPressed: ()=> print("Messi"),
            ),
            RaisedButton(
              child: Text("Click Me"),
              onPressed: (){
                print("Messi");
              },
            ),
          ],
        ),
      )
    );
  }
}