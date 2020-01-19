import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function answerQuestion;

  Answer(this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text("Click Me"),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: answerQuestion,
      ),
    );
  }
}
