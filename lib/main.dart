import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "question": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1},
      ]
    },
    {
      "question": "What's your favorite animal?",
      "answers": [
        {"text": "Rabbit", "score": 4},
        {"text": "Snake", "score": 11},
        {"text": "Elephant", "score": 6},
        {"text": "Lion", "score": 15},
      ]
    },
    {
      "question": "What's your favorite country?",
      "answers": [
        {"text": "Brazil", "score": 20},
        {"text": "USA", "score": 1},
        {"text": "Canada", "score": 10},
        {"text": "France", "score": 5},
        {"text": "Portugal", "score": 7},
        {"text": "Germany", "score": 12},
        {"text": "Argentina", "score": 0},
      ]
    },
    {
      "question": "What's your favorite kind of music?",
      "answers": [
        {"text": "Rock", "score": 20},
        {"text": "Jazz", "score": 15},
        {"text": "Pop", "score": 7},
        {"text": "Reggae", "score": 8},
        {"text": "Soul", "score": 8},
        {"text": "Funk", "score": 0},
      ]
    }
  ];
  var _index = 0;
  var _totalScore = 0;

  void _onAnswer(int score) {
    setState(() {
      _index++;
      _totalScore += score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _index < _questions.length
            ? Quiz(
                question: _questions[_index]["question"],
                answers: _questions[_index]["answers"],
                onAnswer: _onAnswer,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
