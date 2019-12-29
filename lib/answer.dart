import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPressed;
  final String answer;

  Answer(this.onPressed, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 100),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer),
        onPressed: onPressed,
      ),
    );
  }
}
