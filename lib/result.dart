import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 15) {
      resultText = 'You are pretty likeable!';
    } else if (resultScore <= 20) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are okay!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
        FlatButton(onPressed: resetHandler, 
        child: Text('Restart Quiz!'),
        textColor: Colors.blue,
        )
      ],
    ));
  }
}
