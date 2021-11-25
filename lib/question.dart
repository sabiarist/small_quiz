import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question(this.questionText, {Key? key}) : super(key: key);

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.purpleAccent,
          width: 3.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}
