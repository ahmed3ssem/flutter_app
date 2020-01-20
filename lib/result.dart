import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  String get resultPhrase {
    return "Your Score Is = " + resultScore.toString();
  }

  Result(this.resultScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(onPressed: resetQuiz, child: Text("Restart Quiz"),textColor: Colors.blue,)
      ],
    );
  }
}
