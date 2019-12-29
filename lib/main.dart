import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = const [
    {
      "question": "What's your favorite color?",
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "question": "What's your favorite animal?",
      "answers": ["Rabbit", "Snake", "Elephant", "Lion"]
    },
    {
      "question": "What's your favorite country?",
      "answers": ["Brazil", "USA", "Canada"]
    },
    {
      "question": "What's your favorite kind of music?",
      "answers": ["Rock", "Blues", "Jazz", "Pop", "Reggae", "Soul"]
    }
  ];
  var _index = 0;

  void _onAnswer() {
    setState(() {
      _index = (_index + 1) % _questions.length;
      // _questions[0]["name"] = "Haha";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: [
            Question(_questions[_index]["question"]),
            ...(_questions[_index]["answers"] as List<String>)
                .map((answer) => Answer(_onAnswer, answer))
                .toList(),
          ],
        ),
      ),
    );
  }
}
