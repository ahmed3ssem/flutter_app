import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  String get resultPhrase{
    return "Your Score Is = "+resultScore.toString();
  }
  Result(this.resultScore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase,style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
    );
  }
}
