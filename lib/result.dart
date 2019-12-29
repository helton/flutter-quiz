import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function onResetQuiz;

  Result(this.score, this.onResetQuiz);

  String get resultPhrase {
    String result;
    if (score <= 8) {
      result = "You're awesome and innocent!";
    } else if (score <= 12) {
      result = "Pretty likeable!";
    } else if (score <= 15) {
      result = "You're ... strange?";
    } else {
      result = "You're are so bad!";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 20),
            ),
            textColor: Colors.blue,
            onPressed: onResetQuiz,
          ),
        ],
      ),
    );
  }
}
