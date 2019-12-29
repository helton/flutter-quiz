import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<Map<String, Object>> answers;
  final Function onAnswer;

  Quiz({
    @required this.question,
    @required this.answers,
    @required this.onAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question),
        ...answers
            .map((answer) =>
                Answer(() => onAnswer(answer["score"]), answer["text"]))
            .toList(),
      ],
    );
  }
}
